//
//  Outerwear.h
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/19/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "outerwear enum.h"


@interface Clothing : NSObject {
    
}

@property (nonatomic) NSString *colorAsString;

- (instancetype)initWithColor:(NSString *)colorAsString NS_DESIGNATED_INITIALIZER;


@end
