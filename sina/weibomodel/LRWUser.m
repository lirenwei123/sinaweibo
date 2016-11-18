//
//  LRWUser.m
//
//  Created by rwli  on 16/10/26
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "LRWUser.h"


NSString *const kLRWUserMbtype = @"mbtype";
NSString *const kLRWUserAllowAllComment = @"allow_all_comment";
NSString *const kLRWUserAllowAllActMsg = @"allow_all_act_msg";
NSString *const kLRWUserClass = @"class";
NSString *const kLRWUserId = @"id";
NSString *const kLRWUserProfileImageUrl = @"profile_image_url";
NSString *const kLRWUserVerifiedTrade = @"verified_trade";
NSString *const kLRWUserAvatarLarge = @"avatar_large";
NSString *const kLRWUserCreatedAt = @"created_at";
NSString *const kLRWUserRemark = @"remark";
NSString *const kLRWUserVerifiedReason = @"verified_reason";
NSString *const kLRWUserLocation = @"location";
NSString *const kLRWUserLang = @"lang";
NSString *const kLRWUserUrl = @"url";
NSString *const kLRWUserIdstr = @"idstr";
NSString *const kLRWUserFollowMe = @"follow_me";
NSString *const kLRWUserBiFollowersCount = @"bi_followers_count";
NSString *const kLRWUserAvatargjId = @"avatargj_id";
NSString *const kLRWUserGeoEnabled = @"geo_enabled";
NSString *const kLRWUserCreditScore = @"credit_score";
NSString *const kLRWUserFollowersCount = @"followers_count";
NSString *const kLRWUserVerifiedSourceUrl = @"verified_source_url";
NSString *const kLRWUserBlockWord = @"block_word";
NSString *const kLRWUserDescription = @"description";
NSString *const kLRWUserStatusesCount = @"statuses_count";
NSString *const kLRWUserFollowing = @"following";
NSString *const kLRWUserVerifiedType = @"verified_type";
NSString *const kLRWUserAvatarHd = @"avatar_hd";
NSString *const kLRWUserCoverImagePhone = @"cover_image_phone";
NSString *const kLRWUserStar = @"star";
NSString *const kLRWUserName = @"name";
NSString *const kLRWUserDomain = @"domain";
NSString *const kLRWUserCity = @"city";
NSString *const kLRWUserBlockApp = @"block_app";
NSString *const kLRWUserOnlineStatus = @"online_status";
NSString *const kLRWUserUrank = @"urank";
NSString *const kLRWUserVerifiedReasonUrl = @"verified_reason_url";
NSString *const kLRWUserScreenName = @"screen_name";
NSString *const kLRWUserProvince = @"province";
NSString *const kLRWUserVerifiedSource = @"verified_source";
NSString *const kLRWUserWeihao = @"weihao";
NSString *const kLRWUserGender = @"gender";
NSString *const kLRWUserPagefriendsCount = @"pagefriends_count";
NSString *const kLRWUserFavouritesCount = @"favourites_count";
NSString *const kLRWUserMbrank = @"mbrank";
NSString *const kLRWUserProfileUrl = @"profile_url";
NSString *const kLRWUserUserAbility = @"user_ability";
NSString *const kLRWUserCardid = @"cardid";
NSString *const kLRWUserPtype = @"ptype";
NSString *const kLRWUserFriendsCount = @"friends_count";
NSString *const kLRWUserVerified = @"verified";


@interface LRWUser ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation LRWUser

@synthesize mbtype = _mbtype;
@synthesize allowAllComment = _allowAllComment;
@synthesize allowAllActMsg = _allowAllActMsg;
@synthesize classProperty = _classProperty;
@synthesize userIdentifier = _userIdentifier;
@synthesize profileImageUrl = _profileImageUrl;
@synthesize verifiedTrade = _verifiedTrade;
@synthesize avatarLarge = _avatarLarge;
@synthesize createdAt = _createdAt;
@synthesize remark = _remark;
@synthesize verifiedReason = _verifiedReason;
@synthesize location = _location;
@synthesize lang = _lang;
@synthesize url = _url;
@synthesize idstr = _idstr;
@synthesize followMe = _followMe;
@synthesize biFollowersCount = _biFollowersCount;
@synthesize avatargjId = _avatargjId;
@synthesize geoEnabled = _geoEnabled;
@synthesize creditScore = _creditScore;
@synthesize followersCount = _followersCount;
@synthesize verifiedSourceUrl = _verifiedSourceUrl;
@synthesize blockWord = _blockWord;
@synthesize userDescription = _userDescription;
@synthesize statusesCount = _statusesCount;
@synthesize following = _following;
@synthesize verifiedType = _verifiedType;
@synthesize avatarHd = _avatarHd;
@synthesize coverImagePhone = _coverImagePhone;
@synthesize star = _star;
@synthesize name = _name;
@synthesize domain = _domain;
@synthesize city = _city;
@synthesize blockApp = _blockApp;
@synthesize onlineStatus = _onlineStatus;
@synthesize urank = _urank;
@synthesize verifiedReasonUrl = _verifiedReasonUrl;
@synthesize screenName = _screenName;
@synthesize province = _province;
@synthesize verifiedSource = _verifiedSource;
@synthesize weihao = _weihao;
@synthesize gender = _gender;
@synthesize pagefriendsCount = _pagefriendsCount;
@synthesize favouritesCount = _favouritesCount;
@synthesize mbrank = _mbrank;
@synthesize profileUrl = _profileUrl;
@synthesize userAbility = _userAbility;
@synthesize cardid = _cardid;
@synthesize ptype = _ptype;
@synthesize friendsCount = _friendsCount;
@synthesize verified = _verified;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.mbtype = [[self objectOrNilForKey:kLRWUserMbtype fromDictionary:dict] doubleValue];
            self.allowAllComment = [[self objectOrNilForKey:kLRWUserAllowAllComment fromDictionary:dict] boolValue];
            self.allowAllActMsg = [[self objectOrNilForKey:kLRWUserAllowAllActMsg fromDictionary:dict] boolValue];
            self.classProperty = [[self objectOrNilForKey:kLRWUserClass fromDictionary:dict] doubleValue];
            self.userIdentifier = [[self objectOrNilForKey:kLRWUserId fromDictionary:dict] doubleValue];
            self.profileImageUrl = [self objectOrNilForKey:kLRWUserProfileImageUrl fromDictionary:dict];
            self.verifiedTrade = [self objectOrNilForKey:kLRWUserVerifiedTrade fromDictionary:dict];
            self.avatarLarge = [self objectOrNilForKey:kLRWUserAvatarLarge fromDictionary:dict];
            self.createdAt = [self objectOrNilForKey:kLRWUserCreatedAt fromDictionary:dict];
            self.remark = [self objectOrNilForKey:kLRWUserRemark fromDictionary:dict];
            self.verifiedReason = [self objectOrNilForKey:kLRWUserVerifiedReason fromDictionary:dict];
            self.location = [self objectOrNilForKey:kLRWUserLocation fromDictionary:dict];
            self.lang = [self objectOrNilForKey:kLRWUserLang fromDictionary:dict];
            self.url = [self objectOrNilForKey:kLRWUserUrl fromDictionary:dict];
            self.idstr = [self objectOrNilForKey:kLRWUserIdstr fromDictionary:dict];
            self.followMe = [[self objectOrNilForKey:kLRWUserFollowMe fromDictionary:dict] boolValue];
            self.biFollowersCount = [[self objectOrNilForKey:kLRWUserBiFollowersCount fromDictionary:dict] doubleValue];
            self.avatargjId = [self objectOrNilForKey:kLRWUserAvatargjId fromDictionary:dict];
            self.geoEnabled = [[self objectOrNilForKey:kLRWUserGeoEnabled fromDictionary:dict] boolValue];
            self.creditScore = [[self objectOrNilForKey:kLRWUserCreditScore fromDictionary:dict] doubleValue];
            self.followersCount = [[self objectOrNilForKey:kLRWUserFollowersCount fromDictionary:dict] doubleValue];
            self.verifiedSourceUrl = [self objectOrNilForKey:kLRWUserVerifiedSourceUrl fromDictionary:dict];
            self.blockWord = [[self objectOrNilForKey:kLRWUserBlockWord fromDictionary:dict] doubleValue];
            self.userDescription = [self objectOrNilForKey:kLRWUserDescription fromDictionary:dict];
            self.statusesCount = [[self objectOrNilForKey:kLRWUserStatusesCount fromDictionary:dict] doubleValue];
            self.following = [[self objectOrNilForKey:kLRWUserFollowing fromDictionary:dict] boolValue];
            self.verifiedType = [[self objectOrNilForKey:kLRWUserVerifiedType fromDictionary:dict] doubleValue];
            self.avatarHd = [self objectOrNilForKey:kLRWUserAvatarHd fromDictionary:dict];
            self.coverImagePhone = [self objectOrNilForKey:kLRWUserCoverImagePhone fromDictionary:dict];
            self.star = [[self objectOrNilForKey:kLRWUserStar fromDictionary:dict] doubleValue];
            self.name = [self objectOrNilForKey:kLRWUserName fromDictionary:dict];
            self.domain = [self objectOrNilForKey:kLRWUserDomain fromDictionary:dict];
            self.city = [self objectOrNilForKey:kLRWUserCity fromDictionary:dict];
            self.blockApp = [[self objectOrNilForKey:kLRWUserBlockApp fromDictionary:dict] doubleValue];
            self.onlineStatus = [[self objectOrNilForKey:kLRWUserOnlineStatus fromDictionary:dict] doubleValue];
            self.urank = [[self objectOrNilForKey:kLRWUserUrank fromDictionary:dict] doubleValue];
            self.verifiedReasonUrl = [self objectOrNilForKey:kLRWUserVerifiedReasonUrl fromDictionary:dict];
            self.screenName = [self objectOrNilForKey:kLRWUserScreenName fromDictionary:dict];
            self.province = [self objectOrNilForKey:kLRWUserProvince fromDictionary:dict];
            self.verifiedSource = [self objectOrNilForKey:kLRWUserVerifiedSource fromDictionary:dict];
            self.weihao = [self objectOrNilForKey:kLRWUserWeihao fromDictionary:dict];
            self.gender = [self objectOrNilForKey:kLRWUserGender fromDictionary:dict];
            self.pagefriendsCount = [[self objectOrNilForKey:kLRWUserPagefriendsCount fromDictionary:dict] doubleValue];
            self.favouritesCount = [[self objectOrNilForKey:kLRWUserFavouritesCount fromDictionary:dict] doubleValue];
            self.mbrank = [[self objectOrNilForKey:kLRWUserMbrank fromDictionary:dict] doubleValue];
            self.profileUrl = [self objectOrNilForKey:kLRWUserProfileUrl fromDictionary:dict];
            self.userAbility = [[self objectOrNilForKey:kLRWUserUserAbility fromDictionary:dict] doubleValue];
            self.cardid = [self objectOrNilForKey:kLRWUserCardid fromDictionary:dict];
            self.ptype = [[self objectOrNilForKey:kLRWUserPtype fromDictionary:dict] doubleValue];
            self.friendsCount = [[self objectOrNilForKey:kLRWUserFriendsCount fromDictionary:dict] doubleValue];
            self.verified = [[self objectOrNilForKey:kLRWUserVerified fromDictionary:dict] boolValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mbtype] forKey:kLRWUserMbtype];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowAllComment] forKey:kLRWUserAllowAllComment];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowAllActMsg] forKey:kLRWUserAllowAllActMsg];
    [mutableDict setValue:[NSNumber numberWithDouble:self.classProperty] forKey:kLRWUserClass];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userIdentifier] forKey:kLRWUserId];
    [mutableDict setValue:self.profileImageUrl forKey:kLRWUserProfileImageUrl];
    [mutableDict setValue:self.verifiedTrade forKey:kLRWUserVerifiedTrade];
    [mutableDict setValue:self.avatarLarge forKey:kLRWUserAvatarLarge];
    [mutableDict setValue:self.createdAt forKey:kLRWUserCreatedAt];
    [mutableDict setValue:self.remark forKey:kLRWUserRemark];
    [mutableDict setValue:self.verifiedReason forKey:kLRWUserVerifiedReason];
    [mutableDict setValue:self.location forKey:kLRWUserLocation];
    [mutableDict setValue:self.lang forKey:kLRWUserLang];
    [mutableDict setValue:self.url forKey:kLRWUserUrl];
    [mutableDict setValue:self.idstr forKey:kLRWUserIdstr];
    [mutableDict setValue:[NSNumber numberWithBool:self.followMe] forKey:kLRWUserFollowMe];
    [mutableDict setValue:[NSNumber numberWithDouble:self.biFollowersCount] forKey:kLRWUserBiFollowersCount];
    [mutableDict setValue:self.avatargjId forKey:kLRWUserAvatargjId];
    [mutableDict setValue:[NSNumber numberWithBool:self.geoEnabled] forKey:kLRWUserGeoEnabled];
    [mutableDict setValue:[NSNumber numberWithDouble:self.creditScore] forKey:kLRWUserCreditScore];
    [mutableDict setValue:[NSNumber numberWithDouble:self.followersCount] forKey:kLRWUserFollowersCount];
    [mutableDict setValue:self.verifiedSourceUrl forKey:kLRWUserVerifiedSourceUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.blockWord] forKey:kLRWUserBlockWord];
    [mutableDict setValue:self.userDescription forKey:kLRWUserDescription];
    [mutableDict setValue:[NSNumber numberWithDouble:self.statusesCount] forKey:kLRWUserStatusesCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.following] forKey:kLRWUserFollowing];
    [mutableDict setValue:[NSNumber numberWithDouble:self.verifiedType] forKey:kLRWUserVerifiedType];
    [mutableDict setValue:self.avatarHd forKey:kLRWUserAvatarHd];
    [mutableDict setValue:self.coverImagePhone forKey:kLRWUserCoverImagePhone];
    [mutableDict setValue:[NSNumber numberWithDouble:self.star] forKey:kLRWUserStar];
    [mutableDict setValue:self.name forKey:kLRWUserName];
    [mutableDict setValue:self.domain forKey:kLRWUserDomain];
    [mutableDict setValue:self.city forKey:kLRWUserCity];
    [mutableDict setValue:[NSNumber numberWithDouble:self.blockApp] forKey:kLRWUserBlockApp];
    [mutableDict setValue:[NSNumber numberWithDouble:self.onlineStatus] forKey:kLRWUserOnlineStatus];
    [mutableDict setValue:[NSNumber numberWithDouble:self.urank] forKey:kLRWUserUrank];
    [mutableDict setValue:self.verifiedReasonUrl forKey:kLRWUserVerifiedReasonUrl];
    [mutableDict setValue:self.screenName forKey:kLRWUserScreenName];
    [mutableDict setValue:self.province forKey:kLRWUserProvince];
    [mutableDict setValue:self.verifiedSource forKey:kLRWUserVerifiedSource];
    [mutableDict setValue:self.weihao forKey:kLRWUserWeihao];
    [mutableDict setValue:self.gender forKey:kLRWUserGender];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pagefriendsCount] forKey:kLRWUserPagefriendsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.favouritesCount] forKey:kLRWUserFavouritesCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mbrank] forKey:kLRWUserMbrank];
    [mutableDict setValue:self.profileUrl forKey:kLRWUserProfileUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userAbility] forKey:kLRWUserUserAbility];
    [mutableDict setValue:self.cardid forKey:kLRWUserCardid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.ptype] forKey:kLRWUserPtype];
    [mutableDict setValue:[NSNumber numberWithDouble:self.friendsCount] forKey:kLRWUserFriendsCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.verified] forKey:kLRWUserVerified];

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

    self.mbtype = [aDecoder decodeDoubleForKey:kLRWUserMbtype];
    self.allowAllComment = [aDecoder decodeBoolForKey:kLRWUserAllowAllComment];
    self.allowAllActMsg = [aDecoder decodeBoolForKey:kLRWUserAllowAllActMsg];
    self.classProperty = [aDecoder decodeDoubleForKey:kLRWUserClass];
    self.userIdentifier = [aDecoder decodeDoubleForKey:kLRWUserId];
    self.profileImageUrl = [aDecoder decodeObjectForKey:kLRWUserProfileImageUrl];
    self.verifiedTrade = [aDecoder decodeObjectForKey:kLRWUserVerifiedTrade];
    self.avatarLarge = [aDecoder decodeObjectForKey:kLRWUserAvatarLarge];
    self.createdAt = [aDecoder decodeObjectForKey:kLRWUserCreatedAt];
    self.remark = [aDecoder decodeObjectForKey:kLRWUserRemark];
    self.verifiedReason = [aDecoder decodeObjectForKey:kLRWUserVerifiedReason];
    self.location = [aDecoder decodeObjectForKey:kLRWUserLocation];
    self.lang = [aDecoder decodeObjectForKey:kLRWUserLang];
    self.url = [aDecoder decodeObjectForKey:kLRWUserUrl];
    self.idstr = [aDecoder decodeObjectForKey:kLRWUserIdstr];
    self.followMe = [aDecoder decodeBoolForKey:kLRWUserFollowMe];
    self.biFollowersCount = [aDecoder decodeDoubleForKey:kLRWUserBiFollowersCount];
    self.avatargjId = [aDecoder decodeObjectForKey:kLRWUserAvatargjId];
    self.geoEnabled = [aDecoder decodeBoolForKey:kLRWUserGeoEnabled];
    self.creditScore = [aDecoder decodeDoubleForKey:kLRWUserCreditScore];
    self.followersCount = [aDecoder decodeDoubleForKey:kLRWUserFollowersCount];
    self.verifiedSourceUrl = [aDecoder decodeObjectForKey:kLRWUserVerifiedSourceUrl];
    self.blockWord = [aDecoder decodeDoubleForKey:kLRWUserBlockWord];
    self.userDescription = [aDecoder decodeObjectForKey:kLRWUserDescription];
    self.statusesCount = [aDecoder decodeDoubleForKey:kLRWUserStatusesCount];
    self.following = [aDecoder decodeBoolForKey:kLRWUserFollowing];
    self.verifiedType = [aDecoder decodeDoubleForKey:kLRWUserVerifiedType];
    self.avatarHd = [aDecoder decodeObjectForKey:kLRWUserAvatarHd];
    self.coverImagePhone = [aDecoder decodeObjectForKey:kLRWUserCoverImagePhone];
    self.star = [aDecoder decodeDoubleForKey:kLRWUserStar];
    self.name = [aDecoder decodeObjectForKey:kLRWUserName];
    self.domain = [aDecoder decodeObjectForKey:kLRWUserDomain];
    self.city = [aDecoder decodeObjectForKey:kLRWUserCity];
    self.blockApp = [aDecoder decodeDoubleForKey:kLRWUserBlockApp];
    self.onlineStatus = [aDecoder decodeDoubleForKey:kLRWUserOnlineStatus];
    self.urank = [aDecoder decodeDoubleForKey:kLRWUserUrank];
    self.verifiedReasonUrl = [aDecoder decodeObjectForKey:kLRWUserVerifiedReasonUrl];
    self.screenName = [aDecoder decodeObjectForKey:kLRWUserScreenName];
    self.province = [aDecoder decodeObjectForKey:kLRWUserProvince];
    self.verifiedSource = [aDecoder decodeObjectForKey:kLRWUserVerifiedSource];
    self.weihao = [aDecoder decodeObjectForKey:kLRWUserWeihao];
    self.gender = [aDecoder decodeObjectForKey:kLRWUserGender];
    self.pagefriendsCount = [aDecoder decodeDoubleForKey:kLRWUserPagefriendsCount];
    self.favouritesCount = [aDecoder decodeDoubleForKey:kLRWUserFavouritesCount];
    self.mbrank = [aDecoder decodeDoubleForKey:kLRWUserMbrank];
    self.profileUrl = [aDecoder decodeObjectForKey:kLRWUserProfileUrl];
    self.userAbility = [aDecoder decodeDoubleForKey:kLRWUserUserAbility];
    self.cardid = [aDecoder decodeObjectForKey:kLRWUserCardid];
    self.ptype = [aDecoder decodeDoubleForKey:kLRWUserPtype];
    self.friendsCount = [aDecoder decodeDoubleForKey:kLRWUserFriendsCount];
    self.verified = [aDecoder decodeBoolForKey:kLRWUserVerified];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_mbtype forKey:kLRWUserMbtype];
    [aCoder encodeBool:_allowAllComment forKey:kLRWUserAllowAllComment];
    [aCoder encodeBool:_allowAllActMsg forKey:kLRWUserAllowAllActMsg];
    [aCoder encodeDouble:_classProperty forKey:kLRWUserClass];
    [aCoder encodeDouble:_userIdentifier forKey:kLRWUserId];
    [aCoder encodeObject:_profileImageUrl forKey:kLRWUserProfileImageUrl];
    [aCoder encodeObject:_verifiedTrade forKey:kLRWUserVerifiedTrade];
    [aCoder encodeObject:_avatarLarge forKey:kLRWUserAvatarLarge];
    [aCoder encodeObject:_createdAt forKey:kLRWUserCreatedAt];
    [aCoder encodeObject:_remark forKey:kLRWUserRemark];
    [aCoder encodeObject:_verifiedReason forKey:kLRWUserVerifiedReason];
    [aCoder encodeObject:_location forKey:kLRWUserLocation];
    [aCoder encodeObject:_lang forKey:kLRWUserLang];
    [aCoder encodeObject:_url forKey:kLRWUserUrl];
    [aCoder encodeObject:_idstr forKey:kLRWUserIdstr];
    [aCoder encodeBool:_followMe forKey:kLRWUserFollowMe];
    [aCoder encodeDouble:_biFollowersCount forKey:kLRWUserBiFollowersCount];
    [aCoder encodeObject:_avatargjId forKey:kLRWUserAvatargjId];
    [aCoder encodeBool:_geoEnabled forKey:kLRWUserGeoEnabled];
    [aCoder encodeDouble:_creditScore forKey:kLRWUserCreditScore];
    [aCoder encodeDouble:_followersCount forKey:kLRWUserFollowersCount];
    [aCoder encodeObject:_verifiedSourceUrl forKey:kLRWUserVerifiedSourceUrl];
    [aCoder encodeDouble:_blockWord forKey:kLRWUserBlockWord];
    [aCoder encodeObject:_userDescription forKey:kLRWUserDescription];
    [aCoder encodeDouble:_statusesCount forKey:kLRWUserStatusesCount];
    [aCoder encodeBool:_following forKey:kLRWUserFollowing];
    [aCoder encodeDouble:_verifiedType forKey:kLRWUserVerifiedType];
    [aCoder encodeObject:_avatarHd forKey:kLRWUserAvatarHd];
    [aCoder encodeObject:_coverImagePhone forKey:kLRWUserCoverImagePhone];
    [aCoder encodeDouble:_star forKey:kLRWUserStar];
    [aCoder encodeObject:_name forKey:kLRWUserName];
    [aCoder encodeObject:_domain forKey:kLRWUserDomain];
    [aCoder encodeObject:_city forKey:kLRWUserCity];
    [aCoder encodeDouble:_blockApp forKey:kLRWUserBlockApp];
    [aCoder encodeDouble:_onlineStatus forKey:kLRWUserOnlineStatus];
    [aCoder encodeDouble:_urank forKey:kLRWUserUrank];
    [aCoder encodeObject:_verifiedReasonUrl forKey:kLRWUserVerifiedReasonUrl];
    [aCoder encodeObject:_screenName forKey:kLRWUserScreenName];
    [aCoder encodeObject:_province forKey:kLRWUserProvince];
    [aCoder encodeObject:_verifiedSource forKey:kLRWUserVerifiedSource];
    [aCoder encodeObject:_weihao forKey:kLRWUserWeihao];
    [aCoder encodeObject:_gender forKey:kLRWUserGender];
    [aCoder encodeDouble:_pagefriendsCount forKey:kLRWUserPagefriendsCount];
    [aCoder encodeDouble:_favouritesCount forKey:kLRWUserFavouritesCount];
    [aCoder encodeDouble:_mbrank forKey:kLRWUserMbrank];
    [aCoder encodeObject:_profileUrl forKey:kLRWUserProfileUrl];
    [aCoder encodeDouble:_userAbility forKey:kLRWUserUserAbility];
    [aCoder encodeObject:_cardid forKey:kLRWUserCardid];
    [aCoder encodeDouble:_ptype forKey:kLRWUserPtype];
    [aCoder encodeDouble:_friendsCount forKey:kLRWUserFriendsCount];
    [aCoder encodeBool:_verified forKey:kLRWUserVerified];
}

- (id)copyWithZone:(NSZone *)zone {
    LRWUser *copy = [[LRWUser alloc] init];
    
    
    
    if (copy) {

        copy.mbtype = self.mbtype;
        copy.allowAllComment = self.allowAllComment;
        copy.allowAllActMsg = self.allowAllActMsg;
        copy.classProperty = self.classProperty;
        copy.userIdentifier = self.userIdentifier;
        copy.profileImageUrl = [self.profileImageUrl copyWithZone:zone];
        copy.verifiedTrade = [self.verifiedTrade copyWithZone:zone];
        copy.avatarLarge = [self.avatarLarge copyWithZone:zone];
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.remark = [self.remark copyWithZone:zone];
        copy.verifiedReason = [self.verifiedReason copyWithZone:zone];
        copy.location = [self.location copyWithZone:zone];
        copy.lang = [self.lang copyWithZone:zone];
        copy.url = [self.url copyWithZone:zone];
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.followMe = self.followMe;
        copy.biFollowersCount = self.biFollowersCount;
        copy.avatargjId = [self.avatargjId copyWithZone:zone];
        copy.geoEnabled = self.geoEnabled;
        copy.creditScore = self.creditScore;
        copy.followersCount = self.followersCount;
        copy.verifiedSourceUrl = [self.verifiedSourceUrl copyWithZone:zone];
        copy.blockWord = self.blockWord;
        copy.userDescription = [self.userDescription copyWithZone:zone];
        copy.statusesCount = self.statusesCount;
        copy.following = self.following;
        copy.verifiedType = self.verifiedType;
        copy.avatarHd = [self.avatarHd copyWithZone:zone];
        copy.coverImagePhone = [self.coverImagePhone copyWithZone:zone];
        copy.star = self.star;
        copy.name = [self.name copyWithZone:zone];
        copy.domain = [self.domain copyWithZone:zone];
        copy.city = [self.city copyWithZone:zone];
        copy.blockApp = self.blockApp;
        copy.onlineStatus = self.onlineStatus;
        copy.urank = self.urank;
        copy.verifiedReasonUrl = [self.verifiedReasonUrl copyWithZone:zone];
        copy.screenName = [self.screenName copyWithZone:zone];
        copy.province = [self.province copyWithZone:zone];
        copy.verifiedSource = [self.verifiedSource copyWithZone:zone];
        copy.weihao = [self.weihao copyWithZone:zone];
        copy.gender = [self.gender copyWithZone:zone];
        copy.pagefriendsCount = self.pagefriendsCount;
        copy.favouritesCount = self.favouritesCount;
        copy.mbrank = self.mbrank;
        copy.profileUrl = [self.profileUrl copyWithZone:zone];
        copy.userAbility = self.userAbility;
        copy.cardid = [self.cardid copyWithZone:zone];
        copy.ptype = self.ptype;
        copy.friendsCount = self.friendsCount;
        copy.verified = self.verified;
    }
    
    return copy;
}


@end
