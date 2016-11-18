//
//  LRWHttpKit.m
//  sina
//
//  Created by rwli on 16/10/24.
//  Copyright © 2016年 companyName. All rights reserved.
//

#import "LRWHttpKit.h"


@implementation LRWHttpKit

//创建一个 AFHTTPSessionManager 单例用来初始化一些方法，比如response的解析类型添加

+(AFHTTPSessionManager*)sharedLRWManager{
  __block  AFHTTPSessionManager  *manager =nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager =[AFHTTPSessionManager manager];
        AFHTTPResponseSerializer *seria =[[AFHTTPResponseSerializer alloc]init];
        
        /**
         *  - `application/json`
         - `text/json`
         - `text/javascript`
         - `application/xml`
         - `text/xml`
         - `application/x-plist`
         - `image/tiff`
         - `image/jpeg`
         - `image/gif`
         - `image/png`
         - `image/ico`
         - `image/x-icon`
         - `image/bmp`
         - `image/x-bmp`
         - `image/x-xbitmap`
         - `image/x-win-bitmap`
         */
        NSArray *arry =@[@"text/plain",@"application/json",@"text/html"];
        NSMutableSet *set =[NSMutableSet setWithArray:arry];
        seria.acceptableContentTypes=set;
        manager.responseSerializer =seria;
    });
    
    return manager;
}


#pragma mark--HTTPWithGET方法
+(void)HTTPWithGET:(NSString *)urlstr and:(NSDictionary *)parameters and:(netsuccessblock)success and:(netfaildblock)faild{
    [[self sharedLRWManager]GET:urlstr parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(task,responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        faild(task,error);
    }];
    
}
#pragma mark--HTTPWithPOST方法
+(void)HTTPWithPOST:(NSString *)urlstr and:(NSDictionary *)parameters and:(netsuccessblock)success and:(netfaildblock)faild{
   [[self sharedLRWManager]POST:urlstr parameters:parameters progress:nil
success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    success(task,responseObject);
} failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    faild(task,error);
}];

}
#pragma mark--obbserverNetStatus方法
+(void)obbserverNetStatus{
    AFNetworkReachabilityManager *netmanger =[AFNetworkReachabilityManager sharedManager];
    [netmanger startMonitoring];
    [netmanger setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
//                AFNetworkReachabilityStatusUnknown          = -1,
//                AFNetworkReachabilityStatusNotReachable     = 0,
//                AFNetworkReachabilityStatusReachableViaWWAN = 1,
//                AFNetworkReachabilityStatusReachableViaWiFi = 2,
            case -1:
                NSLog(@"＝＝＝AFNetworkReachabilityStatusUnknown＝＝");
                break;
            case 0:
                NSLog(@"＝＝＝AFNetworkReachabilityStatusNotReachable＝＝");
                break;
            case 1:
                NSLog(@"＝＝＝AFNetworkReachabilityStatusReachableViaWWAN＝＝");
                break;
            case 2:
                NSLog(@"=＝＝AFNetworkReachabilityStatusReachableViaWiFi＝＝");
                break;
            default:
                break;
        }
    }];
}

@end
