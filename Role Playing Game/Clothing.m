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
    return [self initWithColor:@"NotChosen"];
}

- (instancetype)initWithColor:(NSString *)colorAsString {
    self = [super init];
    if (self) {
        _colorAsString = colorAsString;
    }
    return self;
}

- (NSString *)colorAsString {
    return _colorAsString;
}

- (NSString *)description {
    return _colorAsString;
}
@end
