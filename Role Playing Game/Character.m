//
//  Character.m
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/18/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "Character.h"
#import "outerwear enum.h"
#import "Clothing.h"

@implementation Character

- (instancetype)init {
    return [self initWithName:@"Unnamed"
                     clothing:@"Not chosen"];
}

- (instancetype)initWithName:(NSString *)name
                    clothing:(NSString *)outerwear {
    self = [super init];
    if (self) {
        _name = name;
        _outerwear = outerwear;
    }
    return self;
}

- (NSString *)name {
    return _name;
}

- (NSString *)description {
    return _name;
}

- (NSString *)outerwear {
    return _outerwear;
}

@end
