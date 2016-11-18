//
//  LRWAnnotations.m
//
//  Created by rwli  on 16/10/26
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "LRWAnnotations.h"


NSString *const kLRWAnnotationsClientMblogid = @"client_mblogid";
NSString *const kLRWAnnotationsShooting = @"shooting";
NSString *const kLRWAnnotationsMapiRequest = @"mapi_request";


@interface LRWAnnotations ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation LRWAnnotations

@synthesize clientMblogid = _clientMblogid;
@synthesize shooting = _shooting;
@synthesize mapiRequest = _mapiRequest;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.clientMblogid = [self objectOrNilForKey:kLRWAnnotationsClientMblogid fromDictionary:dict];
            self.shooting = [[self objectOrNilForKey:kLRWAnnotationsShooting fromDictionary:dict] doubleValue];
            self.mapiRequest = [[self objectOrNilForKey:kLRWAnnotationsMapiRequest fromDictionary:dict] boolValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.clientMblogid forKey:kLRWAnnotationsClientMblogid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.shooting] forKey:kLRWAnnotationsShooting];
    [mutableDict setValue:[NSNumber numberWithBool:self.mapiRequest] forKey:kLRWAnnotationsMapiRequest];

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

    self.clientMblogid = [aDecoder decodeObjectForKey:kLRWAnnotationsClientMblogid];
    self.shooting = [aDecoder decodeDoubleForKey:kLRWAnnotationsShooting];
    self.mapiRequest = [aDecoder decodeBoolForKey:kLRWAnnotationsMapiRequest];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_clientMblogid forKey:kLRWAnnotationsClientMblogid];
    [aCoder encodeDouble:_shooting forKey:kLRWAnnotationsShooting];
    [aCoder encodeBool:_mapiRequest forKey:kLRWAnnotationsMapiRequest];
}

- (id)copyWithZone:(NSZone *)zone {
    LRWAnnotations *copy = [[LRWAnnotations alloc] init];
    
    
    
    if (copy) {

        copy.clientMblogid = [self.clientMblogid copyWithZone:zone];
        copy.shooting = self.shooting;
        copy.mapiRequest = self.mapiRequest;
    }
    
    return copy;
}


@end
