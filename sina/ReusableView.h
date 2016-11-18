//
//  ReusableView.h
//  sina
//
//  Created by rwli on 16/10/30.
//  Copyright © 2016年 companyName. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReusableView : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *lable;

@property (weak, nonatomic) IBOutlet UIScrollView *scoolview;

@end
