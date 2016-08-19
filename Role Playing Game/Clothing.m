//
//  Outerwear.m
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/19/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "Clothing.h"

@implementation Clothing

- (instancetype)init {
    // this is a comment written by tj.
    return [self initWithColor:@"NotChosen"];
}

- (instancetype)initWithColor:(NSString *)color {
    self = [super init];
    if (self) {
        _color = color;
    }
    return self;
}

- (NSString *)color {
    return _color;
}

- (NSString *)description {
    return _color;
}
@end
