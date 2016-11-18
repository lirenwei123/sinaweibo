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
//请求api
#define APPKEY @"519162981" //client_id
#define APPSecret @"9ff3d6eda15d070f2a46ea011c22dbe9"
#define ReplyNetPage @"http://baidu.com"//redirect_uri
#define requst @"https://api.weibo.com/oauth2/authorize"
//授权api
#define access_tokenURL @"https://api.weibo.com/oauth2/access_token"
#define grant_type  @"authorization_code"



@interface ViewController ()<UIWebViewDelegate>
@property (strong,nonatomic) BaseClass *model ;

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
        dispatch_async(dispatch_queue_create("que", DISPATCH_QUEUE_CONCURRENT), ^{
            
            [LRWHttpKit HTTPWithPOST:access_tokenURL and:requstaccessDic and:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                NSLog(@"repomseonject =--------%@",responseObject);
                //            NSString *str =[[NSString alloc]initWithData:responseObject encoding:4];
                //            NSLog(@"str = %@",str);
                NSDictionary *dic =[NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
                
                //一切都是为了你呀！！！！！
                _model =[BaseClass modelObjectWithDictionary:dic];
                
                //好了，开始挥霍
                // 把重要数据持久化／
                //            NSUserDefaults
                //            shahe
                //            NSKeyedArchiver
                //            writetofilre
                
                NSString *ph =kdoc;
                ph =[ph stringByAppendingPathComponent:APPKEY];
                MYLog(@"ph =%@",ph);
                [NSKeyedArchiver archiveRootObject:self.model.accessToken toFile:ph];
                
                [[self.view viewWithTag:100] removeFromSuperview];
                
            } and:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                MYLog(@"error =%@",error);
            }];

            
            
        });
        
    
    }
    
    
       
    
    return YES;
}
#pragma mark--在touch里去实现一些dx。呵呵。你懂的
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSString *ph =kdoc;
    ph =[ph stringByAppendingPathComponent:APPKEY];
    MYLog(@"ph =%@",ph);
    NSFileManager *filemanager =[NSFileManager defaultManager];
    if ([filemanager fileExistsAtPath:ph]) {
        MYLog(@"还好我的数据已经保存好了，现在取出来吧！！！");
      self.model.accessToken =  [NSKeyedUnarchiver unarchiveObjectWithFile:ph];
        [self palySina];
    }else{
        MYLog(@"我去找taken了－－－－－－－－－－");
        [self archivetoken];
    }
    
}

#pragma mark ---有数据就是nb直接开干

#define commonurl @"https://api.weibo.com/2/statuses/public_timeline.json"//GET
//参数access_token
-(void)palySina{
    
    NSString *strurl =[NSString stringWithFormat:@"%@?access_token=%@",commonurl,self.model.accessToken];
    
    dispatch_async(dispatch_queue_create("sb", DISPATCH_QUEUE_CONCURRENT), ^{
        
        [LRWHttpKit HTTPWithGET:strurl and:nil and:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSString *str =[[NSString alloc]initWithData:responseObject encoding:4];
            MYLog(@"微博数据有这些%@",str);
        } and:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            MYLog(@"error=%@",error);
        }];

    });
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BaseClass *)model{
    if (!_model) {
        _model =[[BaseClass alloc]init];
    }
    return _model;
    
}
@end
