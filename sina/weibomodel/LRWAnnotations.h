//
//  LRWAnnotations.h
//
//  Created by rwli  on 16/10/26
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface LRWAnnotations : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *clientMblogid;
@property (nonatomic, assign) double shooting;
@property (nonatomic, assign) BOOL mapiRequest;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
