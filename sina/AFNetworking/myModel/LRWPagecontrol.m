//
//  LRWPagecontrol.m
//  plist
//
//  Created by rwli on 16/10/13.
//  Copyright © 2016年 rwli. All rights reserved.
//

#import "LRWPagecontrol.h"

@implementation LRWPagecontrol


-(void)setCurrentPage:(NSInteger)currentPage{
    
    [super setCurrentPage:currentPage];
    CGFloat w = self.subviews[currentPage].bounds.size.width;
    CGFloat h = self.subviews[currentPage].bounds.size.height;
   
    for (int i=0; i<self.subviews.count; i++) {
        UIView * v =self.subviews[i];
        
        v.frame =CGRectMake(v.frame.origin.x, v.frame.origin.y, w*1.5,h*3 );
    }
       
    
}

       
@end
