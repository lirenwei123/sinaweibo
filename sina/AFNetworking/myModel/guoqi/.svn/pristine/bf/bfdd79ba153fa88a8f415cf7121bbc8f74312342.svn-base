//
//  ViewController.m
//  k
//
//  Created by rwli on 16/10/21.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "ViewController.h"
#import "LRWflowayout.h"
#import "Macros.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LRWflowayout *flow=[[LRWflowayout alloc]initWithsize:CGSizeMake(78, 105) andHorV:YES andminlinespacing:33 andminiteritemsspacing:51 andedgeinsets:UIEdgeInsetsMake(15, 30, 15, 30)];
    
    UICollectionView *co =[[UICollectionView alloc]initWithFrame:CGRectMake(0, 20, 414, 716) collectionViewLayout:flow];
    co.delegate =self;
    co.dataSource =self;
    [self.view addSubview:co];
    [co registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    co.backgroundColor =[UIColor clearColor];
    co.showsVerticalScrollIndicator =NO;
    co.showsHorizontalScrollIndicator=NO;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 50;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.layer.borderColor =[UIColor redColor].CGColor;
    cell.layer.cornerRadius =cell.bounds.size.height/8;
//    cell.layer.masksToBounds =YES;
    cell.backgroundColor =[UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
