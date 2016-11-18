//
//  LRWVisible.m
//
//  Created by rwli  on 16/10/26
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "LRWVisible.h"


NSString *const kLRWVisibleType = @"type";
NSString *const kLRWVisibleListId = @"list_id";


@interface LRWVisible ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation LRWVisible

@synthesize type = _type;
@synthesize listId = _listId;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.type = [[self objectOrNilForKey:kLRWVisibleType fromDictionary:dict] doubleValue];
            self.listId = [[self objectOrNilForKey:kLRWVisibleListId fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.type] forKey:kLRWVisibleType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.listId] forKey:kLRWVisibleListId];

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

    self.type = [aDecoder decodeDoubleForKey:kLRWVisibleType];
    self.listId = [aDecoder decodeDoubleForKey:kLRWVisibleListId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_type forKey:kLRWVisibleType];
    [aCoder encodeDouble:_listId forKey:kLRWVisibleListId];
}

- (id)copyWithZone:(NSZone *)zone {
    LRWVisible *copy = [[LRWVisible alloc] init];
    
    
    
    if (copy) {

        copy.type = self.type;
        copy.listId = self.listId;
    }
    
    return copy;
}


@end
