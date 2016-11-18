//
//  mycell.m
//  sina
//
//  Created by rwli on 16/10/26.
//  Copyright © 2016年 companyName. All rights reserved.
//

#import "mycell.h"
#import "Macros.h"

@implementation mycell

-(void)awakeFromNib{
    [super awakeFromNib];
    }

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.lable1 =[[UILabel alloc]init];
        _lable1.backgroundColor =kRGBAlpha(0, 0, 0, 0);
        _lable1.numberOfLines =0;
        [self.contentView addSubview:_lable1];
        
        self.lable2 =[[UILabel alloc]init];
        _lable2.backgroundColor =kRGBAlpha(0, 0, 0, 0);
        _lable2.numberOfLines =0;
        _lable2.textAlignment =NSTextAlignmentRight;
        [self.contentView addSubview:_lable2];
        
        self.imgv1 =[[UIImageView alloc]init];
        [self.contentView addSubview:_imgv1];
       
      
        
        self.imgv2 =[[UIImageView alloc]init];
        [self.contentView addSubview:_imgv2];
        
     _imgv1.contentMode =UIViewContentModeScaleAspectFit;
       _imgv2.contentMode =UIViewContentModeScaleAspectFit;
        
    }
    return self;
}


-(void)layoutSubviews{
    [super layoutSubviews];
    //label
    CGSize size =CGSizeMake(self.frame.size.width-5, MAXFLOAT);
    
    CGSize lable1_mysize= [self.lable1.text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]} context:nil].size;
    self.lable1.frame =CGRectMake(0, 0, lable1_mysize.width, lable1_mysize.height);
    
        self.lable2.frame =CGRectMake(200, CGRectGetMaxY(_lable1.frame), 200, 50);
    
    
    //imgv
    
//    CGSize img1_size =CGSizeMake(self.imgv1.image.size.width, self.imgv1.image.size.height);
//    CGSize img2_size =CGSizeMake(self.imgv2.image.size.width, self.imgv2.image.size.height);
//    self.imgv1.frame=CGRectMake( self.imgv1.frame.origin.x, self.imgv1.frame.origin.y, img1_size.width, img1_size.height);
//     self.imgv2.frame=CGRectMake( self.imgv2.frame.origin.x, self.imgv2.frame.origin.y, img2_size.width, img2_size.height);
    self.imgv1.frame =CGRectMake(0, CGRectGetMaxY(_lable2.frame), self.frame.size.width/2, self.frame.size.height-CGRectGetMaxY(_lable2.frame));
    self.imgv2.frame =CGRectMake(self.frame.size.width/2, CGRectGetMaxY(_lable2.frame), self.frame.size.width/2, self.frame.size.height-CGRectGetMaxY(_lable2.frame));


}
@end
