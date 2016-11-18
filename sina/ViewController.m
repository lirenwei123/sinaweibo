//
//  ViewController.m
//  sina
//
//  Created by rwli on 16/10/24.
//  Copyright © 2016年 companyName. All rights reserved.
//

#import "ViewController.h"
#import "Macros.h"
#import "LRWHttpKit.h"
#import "DataModels.h"
#import "LRWflowayout.h"
#import "mycell.h"
#import <UIImageView+WebCache.h>
#import "ReusableView.h"
#import "LRWPagecontrol.h"
#import  <MJRefresh.h>
//请求api
#define APPKEY @"519162981" //client_id
#define APPSecret @"9ff3d6eda15d070f2a46ea011c22dbe9"
#define ReplyNetPage @"http://baidu.com"//redirect_uri
#define requst @"https://api.weibo.com/oauth2/authorize"
//授权api
#define access_tokenURL @"https://api.weibo.com/oauth2/access_token"
#define grant_type  @"authorization_code"

#define ModelPlist @"modelarry.plist"

@interface ViewController ()<UIWebViewDelegate,UICollectionViewDelegate,UICollectionViewDataSource>
@property (strong,nonatomic) BaseClass1 *model ;
@property (strong,nonatomic)NSArray *weiboModelArry;
@property (strong,nonatomic)NSFileManager *filemanager;
@property (strong,nonatomic)UIActivityIndicatorView *juhua ;
@property (strong,nonatomic)NSArray *headerImgarr;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
#pragma mark--如果磁盘没有数据，就从网络请求中去拿taken--
-(void)archivetoken{
    NSString *urlstr =[NSString stringWithFormat:@"%@?client_id=%@&redirect_uri=%@",requst,APPKEY,ReplyNetPage];
    MYLog(@"urlstr =%@",urlstr);
    
    UIWebView *web =[[UIWebView alloc]initWithFrame:CGRectMake(0, 20, 414, 700)];
    web.backgroundColor =kGrayColor;
    [self.view addSubview:web];
    NSURLRequest *requst1 =[NSURLRequest requestWithURL:[NSURL URLWithString:urlstr]];
    [web loadRequest:requst1];
    web.delegate =self;
    web.tag =100;
}


#pragma mark --UIWebViewDelegate方法实现
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    NSString *requststr = request.URL.absoluteString;
    MYLog(@"requststr =%@",requststr);
    if ([requststr containsString:@"code="]) {
        NSString *code = [requststr componentsSeparatedByString:@"code="].lastObject;
        //请求参数字典
        NSDictionary *requstaccessDic =@{@"client_id":APPKEY,
                                         @"client_secret":APPSecret,
                                         @"grant_type":grant_type,
                                         @"code":code,
                                         @"redirect_uri":ReplyNetPage
                                         };
        
        MYLog(@"dic ==%@",requstaccessDic);
        
        
        //开始用授权API进行请求返回token
        
        [LRWHttpKit HTTPWithPOST:access_tokenURL and:requstaccessDic and:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"repomseonject =--------%@",responseObject);
            //            NSString *str =[[NSString alloc]initWithData:responseObject encoding:4];
            //            NSLog(@"str = %@",str);
            NSDictionary *dic =[NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
            
            //一切都是为了你呀！！！！！
            self.model =[BaseClass1 modelObjectWithDictionary:dic];
            
            //好了，开始挥霍
            // 把重要数据持久化／
            //            NSUserDefaults
            //            shahe
            //            NSKeyedArchiver
            //            writetofilre
            
            NSString *ph =kdoc;
            ph =[ph stringByAppendingPathComponent:APPKEY];
            MYLog(@"ph =%@",ph);
            if( [NSKeyedArchiver archiveRootObject:self.model.accessToken toFile:ph]){
                MYLog(@"accessToken已经保存好了，！！！");
            };
            
            [[self.view viewWithTag:100] removeFromSuperview];
            
        } and:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            MYLog(@"error =%@",error);
        }];
        
        
        
        
        
        
    }
    
    
    
    
    return YES;
}
#pragma mark--在touch里去实现一些dx。呵呵。你懂的
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSString *modelph =kdoc;
    modelph =[modelph stringByAppendingPathComponent:ModelPlist];
    if( [self.filemanager fileExistsAtPath:modelph]){
        MYLog(@"modelph存在");
        [self setUI];
    }
    else{
        MYLog(@"modelph不存在，要去下载");
        NSString *ph =kdoc;
        ph =[ph stringByAppendingPathComponent:APPKEY];
        //    MYLog(@"ph =%@",ph);
        
        if (![self.filemanager fileExistsAtPath:ph]) {
            [self archivetoken];
            
            
        }
        
        [self playSina];
        [self setUI];
        
    }
    
    
}

#pragma mark ---有数据就是nb直接开干

#define commonurl @"https://api.weibo.com/2/statuses/public_timeline.json"//GET
//参数access_token
-(void)playSina{
    
    NSString *strurl =[NSString stringWithFormat:@"%@?access_token=%@&count=50",commonurl,self.model.accessToken];
    
    [self configjuhua:YES];
    
    
    [LRWHttpKit HTTPWithGET:strurl and:nil and:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //            NSString *str =[[NSString alloc]initWithData:responseObject encoding:4];
        //            MYLog(@"微博数据有这些%@",str);
        //把申请到的数据转成字典－－再转模型
        NSDictionary *dataDic =[NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        NSArray *dataArry =dataDic[@"statuses"];
        NSMutableArray *modelArry =@[].mutableCopy;
        
        [dataArry enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //obj是一个字典
            LRWweibostatus *model   = [LRWweibostatus modelObjectWithDictionary:obj];
            [modelArry addObject:model];
            
        }];
        //把model存入磁盘
        //在这里拿model去 第一次渲染ui，下次就直接缓存渲染
        
        
        
        
        
        NSString *path =kdoc;
        path =[path stringByAppendingPathComponent:ModelPlist];
        //                MYLog(@"---%@",path);
        //                NSData *data =[NSJSONSerialization dataWithJSONObject:modelArry options:NSJSONWritingPrettyPrinted error:nil];
        //                 BOOL iswrite =[data writeToFile:path atomically:YES];
        
        if ([NSKeyedArchiver archiveRootObject:modelArry toFile:path]) {
            MYLog(@"缓存文件modelArry保存成功 ");
            
          
            dispatch_async(dispatch_get_main_queue(), ^{ //这里要用异步
                [self reloadUI];
                [self configjuhua:NO];
                
            });
            
            
            
        }else{
            MYLog(@"modelArry保存失败");
        }
        
        
    } and:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        MYLog(@"error=%@",error);
    }];
    
    
}


#pragma mark --集合视图的代理方法设置
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    NSLog(@"------items =%ld",self.weiboModelArry.count);
           return self.weiboModelArry.count;
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    mycell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    CATransition *cat =[CATransition animation];
    cat.duration =1;
    cat.type =@"rippleEffect";
//        [cell.layer addAnimation:cat forKey:nil];
    //拿模型刷数据
    LRWweibostatus *model =self.weiboModelArry[indexPath.item];
    cell.lable1.text =model.text;
   
    cell.lable2.text =model.user.location;
        [cell.imgv1 sd_setImageWithURL:[NSURL URLWithString:model.user.avatarHd] placeholderImage:[UIImage imageNamed:@"3.jpeg"] options:SDWebImageCacheMemoryOnly];
         [cell.imgv2 sd_setImageWithURL:[NSURL URLWithString:model.user.avatarLarge] placeholderImage:[UIImage imageNamed:@"3.jpeg"] options:SDWebImageCacheMemoryOnly];
        
        [cell layoutSubviews];
        
    
    
    
    return cell;
}
#pragma mark --组头组尾
-(UICollectionReusableView*)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
     ReusableView *view;
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
       
        view =[collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"header" forIndexPath:indexPath];
        view.scoolview.contentSize =CGSizeMake(414*self.headerImgarr.count, 200);
        for (int i=0; i<self.headerImgarr.count; i++) {
            UIImageView *imgv =[[UIImageView alloc]initWithFrame:CGRectMake(414*i, 0, 414, 150)];
            UILabel *lable =[[UILabel alloc]initWithFrame:CGRectMake(157, 50, 100, 50)];
            lable.backgroundColor=kRGBAlpha(0, 0, 0, 0);lable.textAlignment=NSTextAlignmentCenter;
            [view.scoolview addSubview:imgv];
            [imgv addSubview:lable];
            view.scoolview.tag =-9;
            NSString *imgname =[self.headerImgarr[i] valueForKey:@"icon"];
            NSString *name =[self.headerImgarr[i] valueForKey:@"name"];
            UIImage *img =[UIImage imageNamed:imgname];
            imgv.image =img;
            lable.text =name;
            
                
        }
        
        
    }else{
         view =[collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"footer" forIndexPath:indexPath];
    }
 return view;
}
-(void)scgun{
    UIScrollView *sc =[self.view viewWithTag:-9];
    CGPoint p1 = sc.contentOffset;
       CGPoint p2;
    if (p1.x>=(self.headerImgarr.count-1)*414) {
        p2.x=0;
    }else{
         p2 =CGPointMake((NSInteger)p1.x+414, p1.y);
    }
    [sc setContentOffset:p2 animated:YES];
    
   
    
    
}
#pragma mark --ui设置
-(void)setUI{
#if 0 //如果用了自定义的flowout，
    LRWflowayout *flow=[[LRWflowayout alloc]initWithsize:CGSizeMake(400, 300) andHorV:NO andminlinespacing:20 andminiteritemsspacing:5 andedgeinsets:UIEdgeInsetsMake(2, 2, 2, 2)];
    //在flow里去设置组头组尾
    flow.headerReferenceSize =CGSizeMake(414, 200);
//    flow.footerReferenceSize =CGSizeMake(414, 200);
    flow.scrollDirection= UICollectionViewScrollDirectionVertical;
//    UICollectionViewScrollDirectionHorizontal
#endif
    UICollectionViewFlowLayout *flow =[[UICollectionViewFlowLayout alloc]init];
    flow.itemSize =CGSizeMake(400, 300);
    flow.scrollDirection =UICollectionViewScrollDirectionVertical;
    flow.headerReferenceSize =CGSizeMake(414, 200);
    flow.footerReferenceSize =CGSizeMake(414, 200);
    
  
    
    
    UICollectionView *co =[[UICollectionView alloc]initWithFrame:CGRectMake(0, 50, 414, 650) collectionViewLayout:flow];
    co.center =self.view.center;
    co.delegate =self;
    co.dataSource =self;
    co.backgroundColor =kClearColor;
    
    
        [co registerClass:[mycell class] forCellWithReuseIdentifier:@"cell"];
       co.showsVerticalScrollIndicator =NO;
    co.showsHorizontalScrollIndicator=NO;
    co.tag =-1;
    
    [self.view addSubview:co];
    [self shuaxinBTN];
    
    //MJResresh
    MJRefreshNormalHeader *refresh =[MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [self playSina];
        
    }];
    [refresh endRefreshingWithCompletionBlock:^{
        MYLog(@"refresh over---");
    }];

    refresh.activityIndicatorViewStyle =UIActivityIndicatorViewStyleWhiteLarge;
//    refresh.arrowView.image=[UIImage imageNamed:@"3"];
    refresh.stateLabel.text =refresh.lastUpdatedTimeKey;

    co.mj_header =refresh;
    co.mj_footer =[MJRefreshBackStateFooter footerWithRefreshingBlock:nil];
    
    //组头组尾
   
    
    UINib *foot =[UINib nibWithNibName:@"footer" bundle:[NSBundle mainBundle] ];
    UINib *header =[UINib nibWithNibName:@"reuseview" bundle:nil];
    [co registerNib:header forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header"];
    
    [co registerNib:foot forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footer"];
    
NSTimer *timer= [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(scgun) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSDefaultRunLoopMode];
    
    
}


-(NSFileManager *)filemanager{
    if (!_filemanager) {
        _filemanager =[NSFileManager defaultManager];
    }
    return _filemanager;
}
-(BaseClass1 *)model{
    if (!_model) {
        _model =[[BaseClass1 alloc]init];
        NSString *ph =kdoc;
        ph =[ph stringByAppendingPathComponent:APPKEY];
        _model.accessToken =  [NSKeyedUnarchiver unarchiveObjectWithFile:ph];
    }
    return _model;
    
}
-(NSArray *)weiboModelArry{
    if (!_weiboModelArry) {
        
        NSString *ph =kdoc;
        ph =[ph stringByAppendingPathComponent:ModelPlist];
        _weiboModelArry= [NSKeyedUnarchiver unarchiveObjectWithFile:ph];
        
    }
    return _weiboModelArry;
}

-(void)shuaxinBTN{
    for (int i=0; i<3; i++) {
        UIButton *btn =[[UIButton alloc]initWithFrame:CGRectMake(125*i+10, 15, 119, 30)];
        btn.backgroundColor =kRandomeColor;
        [self.view addSubview:btn];
        btn.tag=108+i;
        switch (i) {
            case 0:
                [btn setTitle:@"刷新" forState:UIControlStateNormal];
                [btn addTarget:self action:@selector(shuaxin:) forControlEvents:UIControlEventTouchUpInside];
                break;
            case 1:
                [btn setTitle:@"清除缓存文件" forState:UIControlStateNormal];
                [btn addTarget:self action:@selector(shuaxin:) forControlEvents:UIControlEventTouchUpInside];
                break;
            case 2:
                [btn setTitle:@"回顶部" forState:UIControlStateNormal];
                [btn addTarget:self action:@selector(shuaxin:) forControlEvents:UIControlEventTouchUpInside];
                break;

                
            default:
                break;
        }
    }
    
    
}
-(void)shuaxin:(UIButton*)sender{
    if (sender.tag ==110) {
        //对co进行操作，回到第一行
        UICollectionView *co =[self.view viewWithTag:-1];
        [co setContentOffset:CGPointMake(0, 0) animated:YES];
        
        return;
    }
    NSString *ph =kdoc;
    ph =[ph stringByAppendingPathComponent:ModelPlist];
    if([self.filemanager fileExistsAtPath:ph]){
        [self.filemanager removeItemAtPath:ph error:nil];
        if(![self.filemanager fileExistsAtPath:ph]){
            MYLog(@"缓存文件已删除");
            
        }
    }else{
        MYLog(@"已经不存在");
           }

    switch (sender.tag) {
        case 108:
            [self playSina];
            
            break;
            
        default:
            break;
    }

    
    
    
}


-(void)configjuhua:(BOOL)yesorno{
    
    
    
[LRWHttpKit configjuhua:yesorno forview:nil];
    
    
}


-(void)reloadUI{
    UICollectionView *co =[self.view viewWithTag:-1];
    [co reloadData];
    
}

-(NSArray *)headerImgarr{
    if (!_headerImgarr) {
        NSString *ph =[[NSBundle mainBundle]pathForResource:@"flags.plist" ofType:nil];
        _headerImgarr =[NSArray arrayWithContentsOfFile:ph];
    }
    return _headerImgarr;
}
@end
