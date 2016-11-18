//
//  LRWweibostatus.h
//
//  Created by rwli  on 16/10/26
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LRWUser, LRWVisible;

@interface LRWweibostatus : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) BOOL favorited;
@property (nonatomic, assign) BOOL truncated;
@property (nonatomic, assign) double internalBaseClassIdentifier;
@property (nonatomic, strong) NSString *createdAt;
@property (nonatomic, strong) NSString *inReplyToScreenName;
@property (nonatomic, assign) BOOL isLongText;
@property (nonatomic, assign) double isShowBulletin;
@property (nonatomic, strong) NSArray *picUrls;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *idstr;
@property (nonatomic, strong) NSString *gifIds;
@property (nonatomic, assign) double textLength;
@property (nonatomic, assign) double hasActionTypeCard;
@property (nonatomic, assign) double sourceType;
@property (nonatomic, strong) NSArray *hotWeiboTags;
@property (nonatomic, assign) id geo;
@property (nonatomic, strong) LRWUser *user;
@property (nonatomic, strong) NSArray *textTagTips;
@property (nonatomic, assign) double commentsCount;
@property (nonatomic, strong) NSString *source;
@property (nonatomic, assign) double sourceAllowclick;
@property (nonatomic, assign) double bizFeature;
@property (nonatomic, strong) NSArray *annotations;
@property (nonatomic, assign) double positiveRecomFlag;
@property (nonatomic, strong) LRWVisible *visible;
@property (nonatomic, strong) NSString *inReplyToStatusId;
@property (nonatomic, strong) NSString *mid;
@property (nonatomic, assign) double repostsCount;
@property (nonatomic, assign) double userType;
@property (nonatomic, assign) double attitudesCount;
@property (nonatomic, strong) NSArray *darwinTags;
@property (nonatomic, assign) double mlevel;
@property (nonatomic, strong) NSString *inReplyToUserId;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
