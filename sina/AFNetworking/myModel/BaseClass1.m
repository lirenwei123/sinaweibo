//
//  BaseClass.m
//
//  Created by rwli  on 16/10/25
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "BaseClass1.h"


NSString *const kBaseClassUid = @"uid";
NSString *const kBaseClassExpiresIn = @"expires_in";
NSString *const kBaseClassAccessToken = @"access_token";
NSString *const kBaseClassRemindIn = @"remind_in";


@interface BaseClass1 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation BaseClass1

@synthesize uid = _uid;
@synthesize expiresIn = _expiresIn;
@synthesize accessToken = _accessToken;
@synthesize remindIn = _remindIn;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.uid = [self objectOrNilForKey:kBaseClassUid fromDictionary:dict];
            self.expiresIn = [[self objectOrNilForKey:kBaseClassExpiresIn fromDictionary:dict] doubleValue];
            self.accessToken = [self objectOrNilForKey:kBaseClassAccessToken fromDictionary:dict];
            self.remindIn = [self objectOrNilForKey:kBaseClassRemindIn fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.uid forKey:kBaseClassUid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.expiresIn] forKey:kBaseClassExpiresIn];
    [mutableDict setValue:self.accessToken forKey:kBaseClassAccessToken];
    [mutableDict setValue:self.remindIn forKey:kBaseClassRemindIn];

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

    self.uid = [aDecoder decodeObjectForKey:kBaseClassUid];
    self.expiresIn = [aDecoder decodeDoubleForKey:kBaseClassExpiresIn];
    self.accessToken = [aDecoder decodeObjectForKey:kBaseClassAccessToken];
    self.remindIn = [aDecoder decodeObjectForKey:kBaseClassRemindIn];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_uid forKey:kBaseClassUid];
    [aCoder encodeDouble:_expiresIn forKey:kBaseClassExpiresIn];
    [aCoder encodeObject:_accessToken forKey:kBaseClassAccessToken];
    [aCoder encodeObject:_remindIn forKey:kBaseClassRemindIn];
}

- (id)copyWithZone:(NSZone *)zone {
    BaseClass1 *copy = [[BaseClass1 alloc] init];
    
    
    
    if (copy) {

        copy.uid = [self.uid copyWithZone:zone];
        copy.expiresIn = self.expiresIn;
        copy.accessToken = [self.accessToken copyWithZone:zone];
        copy.remindIn = [self.remindIn copyWithZone:zone];
    }
    
    return copy;
}


@end
