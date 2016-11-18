//
//  BaseClass.h
//
//  Created by rwli  on 16/10/25
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface BaseClass1 : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *uid;
@property (nonatomic, assign) double expiresIn;
@property (nonatomic, strong) NSString *accessToken;
@property (nonatomic, strong) NSString *remindIn;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
