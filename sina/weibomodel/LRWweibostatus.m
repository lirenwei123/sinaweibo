//
//  LRWweibostatus.m
//
//  Created by rwli  on 16/10/26
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "LRWweibostatus.h"
#import "LRWUser.h"
#import "LRWAnnotations.h"
#import "LRWVisible.h"


NSString *const kLRWweibostatusFavorited = @"favorited";
NSString *const kLRWweibostatusTruncated = @"truncated";
NSString *const kLRWweibostatusId = @"id";
NSString *const kLRWweibostatusCreatedAt = @"created_at";
NSString *const kLRWweibostatusInReplyToScreenName = @"in_reply_to_screen_name";
NSString *const kLRWweibostatusIsLongText = @"isLongText";
NSString *const kLRWweibostatusIsShowBulletin = @"is_show_bulletin";
NSString *const kLRWweibostatusPicUrls = @"pic_urls";
NSString *const kLRWweibostatusText = @"text";
NSString *const kLRWweibostatusIdstr = @"idstr";
NSString *const kLRWweibostatusGifIds = @"gif_ids";
NSString *const kLRWweibostatusTextLength = @"textLength";
NSString *const kLRWweibostatusHasActionTypeCard = @"hasActionTypeCard";
NSString *const kLRWweibostatusSourceType = @"source_type";
NSString *const kLRWweibostatusHotWeiboTags = @"hot_weibo_tags";
NSString *const kLRWweibostatusGeo = @"geo";
NSString *const kLRWweibostatusUser = @"user";
NSString *const kLRWweibostatusTextTagTips = @"text_tag_tips";
NSString *const kLRWweibostatusCommentsCount = @"comments_count";
NSString *const kLRWweibostatusSource = @"source";
NSString *const kLRWweibostatusSourceAllowclick = @"source_allowclick";
NSString *const kLRWweibostatusBizFeature = @"biz_feature";
NSString *const kLRWweibostatusAnnotations = @"annotations";
NSString *const kLRWweibostatusPositiveRecomFlag = @"positive_recom_flag";
NSString *const kLRWweibostatusVisible = @"visible";
NSString *const kLRWweibostatusInReplyToStatusId = @"in_reply_to_status_id";
NSString *const kLRWweibostatusMid = @"mid";
NSString *const kLRWweibostatusRepostsCount = @"reposts_count";
NSString *const kLRWweibostatusUserType = @"userType";
NSString *const kLRWweibostatusAttitudesCount = @"attitudes_count";
NSString *const kLRWweibostatusDarwinTags = @"darwin_tags";
NSString *const kLRWweibostatusMlevel = @"mlevel";
NSString *const kLRWweibostatusInReplyToUserId = @"in_reply_to_user_id";


@interface LRWweibostatus ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation LRWweibostatus

@synthesize favorited = _favorited;
@synthesize truncated = _truncated;
@synthesize internalBaseClassIdentifier = _internalBaseClassIdentifier;
@synthesize createdAt = _createdAt;
@synthesize inReplyToScreenName = _inReplyToScreenName;
@synthesize isLongText = _isLongText;
@synthesize isShowBulletin = _isShowBulletin;
@synthesize picUrls = _picUrls;
@synthesize text = _text;
@synthesize idstr = _idstr;
@synthesize gifIds = _gifIds;
@synthesize textLength = _textLength;
@synthesize hasActionTypeCard = _hasActionTypeCard;
@synthesize sourceType = _sourceType;
@synthesize hotWeiboTags = _hotWeiboTags;
@synthesize geo = _geo;
@synthesize user = _user;
@synthesize textTagTips = _textTagTips;
@synthesize commentsCount = _commentsCount;
@synthesize source = _source;
@synthesize sourceAllowclick = _sourceAllowclick;
@synthesize bizFeature = _bizFeature;
@synthesize annotations = _annotations;
@synthesize positiveRecomFlag = _positiveRecomFlag;
@synthesize visible = _visible;
@synthesize inReplyToStatusId = _inReplyToStatusId;
@synthesize mid = _mid;
@synthesize repostsCount = _repostsCount;
@synthesize userType = _userType;
@synthesize attitudesCount = _attitudesCount;
@synthesize darwinTags = _darwinTags;
@synthesize mlevel = _mlevel;
@synthesize inReplyToUserId = _inReplyToUserId;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.favorited = [[self objectOrNilForKey:kLRWweibostatusFavorited fromDictionary:dict] boolValue];
            self.truncated = [[self objectOrNilForKey:kLRWweibostatusTruncated fromDictionary:dict] boolValue];
            self.internalBaseClassIdentifier = [[self objectOrNilForKey:kLRWweibostatusId fromDictionary:dict] doubleValue];
            self.createdAt = [self objectOrNilForKey:kLRWweibostatusCreatedAt fromDictionary:dict];
            self.inReplyToScreenName = [self objectOrNilForKey:kLRWweibostatusInReplyToScreenName fromDictionary:dict];
            self.isLongText = [[self objectOrNilForKey:kLRWweibostatusIsLongText fromDictionary:dict] boolValue];
            self.isShowBulletin = [[self objectOrNilForKey:kLRWweibostatusIsShowBulletin fromDictionary:dict] doubleValue];
            self.picUrls = [self objectOrNilForKey:kLRWweibostatusPicUrls fromDictionary:dict];
            self.text = [self objectOrNilForKey:kLRWweibostatusText fromDictionary:dict];
            self.idstr = [self objectOrNilForKey:kLRWweibostatusIdstr fromDictionary:dict];
            self.gifIds = [self objectOrNilForKey:kLRWweibostatusGifIds fromDictionary:dict];
            self.textLength = [[self objectOrNilForKey:kLRWweibostatusTextLength fromDictionary:dict] doubleValue];
            self.hasActionTypeCard = [[self objectOrNilForKey:kLRWweibostatusHasActionTypeCard fromDictionary:dict] doubleValue];
            self.sourceType = [[self objectOrNilForKey:kLRWweibostatusSourceType fromDictionary:dict] doubleValue];
            self.hotWeiboTags = [self objectOrNilForKey:kLRWweibostatusHotWeiboTags fromDictionary:dict];
            self.geo = [self objectOrNilForKey:kLRWweibostatusGeo fromDictionary:dict];
            self.user = [LRWUser modelObjectWithDictionary:[dict objectForKey:kLRWweibostatusUser]];
            self.textTagTips = [self objectOrNilForKey:kLRWweibostatusTextTagTips fromDictionary:dict];
            self.commentsCount = [[self objectOrNilForKey:kLRWweibostatusCommentsCount fromDictionary:dict] doubleValue];
            self.source = [self objectOrNilForKey:kLRWweibostatusSource fromDictionary:dict];
            self.sourceAllowclick = [[self objectOrNilForKey:kLRWweibostatusSourceAllowclick fromDictionary:dict] doubleValue];
            self.bizFeature = [[self objectOrNilForKey:kLRWweibostatusBizFeature fromDictionary:dict] doubleValue];
    NSObject *receivedLRWAnnotations = [dict objectForKey:kLRWweibostatusAnnotations];
    NSMutableArray *parsedLRWAnnotations = [NSMutableArray array];
    
    if ([receivedLRWAnnotations isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedLRWAnnotations) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedLRWAnnotations addObject:[LRWAnnotations modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedLRWAnnotations isKindOfClass:[NSDictionary class]]) {
       [parsedLRWAnnotations addObject:[LRWAnnotations modelObjectWithDictionary:(NSDictionary *)receivedLRWAnnotations]];
    }

    self.annotations = [NSArray arrayWithArray:parsedLRWAnnotations];
            self.positiveRecomFlag = [[self objectOrNilForKey:kLRWweibostatusPositiveRecomFlag fromDictionary:dict] doubleValue];
            self.visible = [LRWVisible modelObjectWithDictionary:[dict objectForKey:kLRWweibostatusVisible]];
            self.inReplyToStatusId = [self objectOrNilForKey:kLRWweibostatusInReplyToStatusId fromDictionary:dict];
            self.mid = [self objectOrNilForKey:kLRWweibostatusMid fromDictionary:dict];
            self.repostsCount = [[self objectOrNilForKey:kLRWweibostatusRepostsCount fromDictionary:dict] doubleValue];
            self.userType = [[self objectOrNilForKey:kLRWweibostatusUserType fromDictionary:dict] doubleValue];
            self.attitudesCount = [[self objectOrNilForKey:kLRWweibostatusAttitudesCount fromDictionary:dict] doubleValue];
            self.darwinTags = [self objectOrNilForKey:kLRWweibostatusDarwinTags fromDictionary:dict];
            self.mlevel = [[self objectOrNilForKey:kLRWweibostatusMlevel fromDictionary:dict] doubleValue];
            self.inReplyToUserId = [self objectOrNilForKey:kLRWweibostatusInReplyToUserId fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithBool:self.favorited] forKey:kLRWweibostatusFavorited];
    [mutableDict setValue:[NSNumber numberWithBool:self.truncated] forKey:kLRWweibostatusTruncated];
    [mutableDict setValue:[NSNumber numberWithDouble:self.internalBaseClassIdentifier] forKey:kLRWweibostatusId];
    [mutableDict setValue:self.createdAt forKey:kLRWweibostatusCreatedAt];
    [mutableDict setValue:self.inReplyToScreenName forKey:kLRWweibostatusInReplyToScreenName];
    [mutableDict setValue:[NSNumber numberWithBool:self.isLongText] forKey:kLRWweibostatusIsLongText];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isShowBulletin] forKey:kLRWweibostatusIsShowBulletin];
    NSMutableArray *tempArrayForPicUrls = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.picUrls) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForPicUrls addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForPicUrls addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForPicUrls] forKey:kLRWweibostatusPicUrls];
    [mutableDict setValue:self.text forKey:kLRWweibostatusText];
    [mutableDict setValue:self.idstr forKey:kLRWweibostatusIdstr];
    [mutableDict setValue:self.gifIds forKey:kLRWweibostatusGifIds];
    [mutableDict setValue:[NSNumber numberWithDouble:self.textLength] forKey:kLRWweibostatusTextLength];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hasActionTypeCard] forKey:kLRWweibostatusHasActionTypeCard];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceType] forKey:kLRWweibostatusSourceType];
    NSMutableArray *tempArrayForHotWeiboTags = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.hotWeiboTags) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForHotWeiboTags addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForHotWeiboTags addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForHotWeiboTags] forKey:kLRWweibostatusHotWeiboTags];
    [mutableDict setValue:self.geo forKey:kLRWweibostatusGeo];
    [mutableDict setValue:[self.user dictionaryRepresentation] forKey:kLRWweibostatusUser];
    NSMutableArray *tempArrayForTextTagTips = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.textTagTips) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTextTagTips addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTextTagTips addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTextTagTips] forKey:kLRWweibostatusTextTagTips];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentsCount] forKey:kLRWweibostatusCommentsCount];
    [mutableDict setValue:self.source forKey:kLRWweibostatusSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceAllowclick] forKey:kLRWweibostatusSourceAllowclick];
    [mutableDict setValue:[NSNumber numberWithDouble:self.bizFeature] forKey:kLRWweibostatusBizFeature];
    NSMutableArray *tempArrayForAnnotations = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.annotations) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAnnotations addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAnnotations addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAnnotations] forKey:kLRWweibostatusAnnotations];
    [mutableDict setValue:[NSNumber numberWithDouble:self.positiveRecomFlag] forKey:kLRWweibostatusPositiveRecomFlag];
    [mutableDict setValue:[self.visible dictionaryRepresentation] forKey:kLRWweibostatusVisible];
    [mutableDict setValue:self.inReplyToStatusId forKey:kLRWweibostatusInReplyToStatusId];
    [mutableDict setValue:self.mid forKey:kLRWweibostatusMid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.repostsCount] forKey:kLRWweibostatusRepostsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userType] forKey:kLRWweibostatusUserType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.attitudesCount] forKey:kLRWweibostatusAttitudesCount];
    NSMutableArray *tempArrayForDarwinTags = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.darwinTags) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForDarwinTags addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForDarwinTags addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForDarwinTags] forKey:kLRWweibostatusDarwinTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mlevel] forKey:kLRWweibostatusMlevel];
    [mutableDict setValue:self.inReplyToUserId forKey:kLRWweibostatusInReplyToUserId];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description  {
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict {
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];

    self.favorited = [aDecoder decodeBoolForKey:kLRWweibostatusFavorited];
    self.truncated = [aDecoder decodeBoolForKey:kLRWweibostatusTruncated];
    self.internalBaseClassIdentifier = [aDecoder decodeDoubleForKey:kLRWweibostatusId];
    self.createdAt = [aDecoder decodeObjectForKey:kLRWweibostatusCreatedAt];
    self.inReplyToScreenName = [aDecoder decodeObjectForKey:kLRWweibostatusInReplyToScreenName];
    self.isLongText = [aDecoder decodeBoolForKey:kLRWweibostatusIsLongText];
    self.isShowBulletin = [aDecoder decodeDoubleForKey:kLRWweibostatusIsShowBulletin];
    self.picUrls = [aDecoder decodeObjectForKey:kLRWweibostatusPicUrls];
    self.text = [aDecoder decodeObjectForKey:kLRWweibostatusText];
    self.idstr = [aDecoder decodeObjectForKey:kLRWweibostatusIdstr];
    self.gifIds = [aDecoder decodeObjectForKey:kLRWweibostatusGifIds];
    self.textLength = [aDecoder decodeDoubleForKey:kLRWweibostatusTextLength];
    self.hasActionTypeCard = [aDecoder decodeDoubleForKey:kLRWweibostatusHasActionTypeCard];
    self.sourceType = [aDecoder decodeDoubleForKey:kLRWweibostatusSourceType];
    self.hotWeiboTags = [aDecoder decodeObjectForKey:kLRWweibostatusHotWeiboTags];
    self.geo = [aDecoder decodeObjectForKey:kLRWweibostatusGeo];
    self.user = [aDecoder decodeObjectForKey:kLRWweibostatusUser];
    self.textTagTips = [aDecoder decodeObjectForKey:kLRWweibostatusTextTagTips];
    self.commentsCount = [aDecoder decodeDoubleForKey:kLRWweibostatusCommentsCount];
    self.source = [aDecoder decodeObjectForKey:kLRWweibostatusSource];
    self.sourceAllowclick = [aDecoder decodeDoubleForKey:kLRWweibostatusSourceAllowclick];
    self.bizFeature = [aDecoder decodeDoubleForKey:kLRWweibostatusBizFeature];
    self.annotations = [aDecoder decodeObjectForKey:kLRWweibostatusAnnotations];
    self.positiveRecomFlag = [aDecoder decodeDoubleForKey:kLRWweibostatusPositiveRecomFlag];
    self.visible = [aDecoder decodeObjectForKey:kLRWweibostatusVisible];
    self.inReplyToStatusId = [aDecoder decodeObjectForKey:kLRWweibostatusInReplyToStatusId];
    self.mid = [aDecoder decodeObjectForKey:kLRWweibostatusMid];
    self.repostsCount = [aDecoder decodeDoubleForKey:kLRWweibostatusRepostsCount];
    self.userType = [aDecoder decodeDoubleForKey:kLRWweibostatusUserType];
    self.attitudesCount = [aDecoder decodeDoubleForKey:kLRWweibostatusAttitudesCount];
    self.darwinTags = [aDecoder decodeObjectForKey:kLRWweibostatusDarwinTags];
    self.mlevel = [aDecoder decodeDoubleForKey:kLRWweibostatusMlevel];
    self.inReplyToUserId = [aDecoder decodeObjectForKey:kLRWweibostatusInReplyToUserId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeBool:_favorited forKey:kLRWweibostatusFavorited];
    [aCoder encodeBool:_truncated forKey:kLRWweibostatusTruncated];
    [aCoder encodeDouble:_internalBaseClassIdentifier forKey:kLRWweibostatusId];
    [aCoder encodeObject:_createdAt forKey:kLRWweibostatusCreatedAt];
    [aCoder encodeObject:_inReplyToScreenName forKey:kLRWweibostatusInReplyToScreenName];
    [aCoder encodeBool:_isLongText forKey:kLRWweibostatusIsLongText];
    [aCoder encodeDouble:_isShowBulletin forKey:kLRWweibostatusIsShowBulletin];
    [aCoder encodeObject:_picUrls forKey:kLRWweibostatusPicUrls];
    [aCoder encodeObject:_text forKey:kLRWweibostatusText];
    [aCoder encodeObject:_idstr forKey:kLRWweibostatusIdstr];
    [aCoder encodeObject:_gifIds forKey:kLRWweibostatusGifIds];
    [aCoder encodeDouble:_textLength forKey:kLRWweibostatusTextLength];
    [aCoder encodeDouble:_hasActionTypeCard forKey:kLRWweibostatusHasActionTypeCard];
    [aCoder encodeDouble:_sourceType forKey:kLRWweibostatusSourceType];
    [aCoder encodeObject:_hotWeiboTags forKey:kLRWweibostatusHotWeiboTags];
    [aCoder encodeObject:_geo forKey:kLRWweibostatusGeo];
    [aCoder encodeObject:_user forKey:kLRWweibostatusUser];
    [aCoder encodeObject:_textTagTips forKey:kLRWweibostatusTextTagTips];
    [aCoder encodeDouble:_commentsCount forKey:kLRWweibostatusCommentsCount];
    [aCoder encodeObject:_source forKey:kLRWweibostatusSource];
    [aCoder encodeDouble:_sourceAllowclick forKey:kLRWweibostatusSourceAllowclick];
    [aCoder encodeDouble:_bizFeature forKey:kLRWweibostatusBizFeature];
    [aCoder encodeObject:_annotations forKey:kLRWweibostatusAnnotations];
    [aCoder encodeDouble:_positiveRecomFlag forKey:kLRWweibostatusPositiveRecomFlag];
    [aCoder encodeObject:_visible forKey:kLRWweibostatusVisible];
    [aCoder encodeObject:_inReplyToStatusId forKey:kLRWweibostatusInReplyToStatusId];
    [aCoder encodeObject:_mid forKey:kLRWweibostatusMid];
    [aCoder encodeDouble:_repostsCount forKey:kLRWweibostatusRepostsCount];
    [aCoder encodeDouble:_userType forKey:kLRWweibostatusUserType];
    [aCoder encodeDouble:_attitudesCount forKey:kLRWweibostatusAttitudesCount];
    [aCoder encodeObject:_darwinTags forKey:kLRWweibostatusDarwinTags];
    [aCoder encodeDouble:_mlevel forKey:kLRWweibostatusMlevel];
    [aCoder encodeObject:_inReplyToUserId forKey:kLRWweibostatusInReplyToUserId];
}

- (id)copyWithZone:(NSZone *)zone {
    LRWweibostatus *copy = [[LRWweibostatus alloc] init];
    
    
    
    if (copy) {

        copy.favorited = self.favorited;
        copy.truncated = self.truncated;
        copy.internalBaseClassIdentifier = self.internalBaseClassIdentifier;
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.inReplyToScreenName = [self.inReplyToScreenName copyWithZone:zone];
        copy.isLongText = self.isLongText;
        copy.isShowBulletin = self.isShowBulletin;
        copy.picUrls = [self.picUrls copyWithZone:zone];
        copy.text = [self.text copyWithZone:zone];
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.gifIds = [self.gifIds copyWithZone:zone];
        copy.textLength = self.textLength;
        copy.hasActionTypeCard = self.hasActionTypeCard;
        copy.sourceType = self.sourceType;
        copy.hotWeiboTags = [self.hotWeiboTags copyWithZone:zone];
        copy.geo = [self.geo copyWithZone:zone];
        copy.user = [self.user copyWithZone:zone];
        copy.textTagTips = [self.textTagTips copyWithZone:zone];
        copy.commentsCount = self.commentsCount;
        copy.source = [self.source copyWithZone:zone];
        copy.sourceAllowclick = self.sourceAllowclick;
        copy.bizFeature = self.bizFeature;
        copy.annotations = [self.annotations copyWithZone:zone];
        copy.positiveRecomFlag = self.positiveRecomFlag;
        copy.visible = [self.visible copyWithZone:zone];
        copy.inReplyToStatusId = [self.inReplyToStatusId copyWithZone:zone];
        copy.mid = [self.mid copyWithZone:zone];
        copy.repostsCount = self.repostsCount;
        copy.userType = self.userType;
        copy.attitudesCount = self.attitudesCount;
        copy.darwinTags = [self.darwinTags copyWithZone:zone];
        copy.mlevel = self.mlevel;
        copy.inReplyToUserId = [self.inReplyToUserId copyWithZone:zone];
    }
    
    return copy;
}


@end
