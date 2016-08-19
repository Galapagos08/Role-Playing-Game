//
//  Character.h
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/18/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Clothing.h"
#import "outerwear enum.h"

@interface Character : NSObject {
    
}

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *outerwearAsString;


- (instancetype)initWithName:(NSString *)name
                    clothing:(NSString *)outerwearAsString NS_DESIGNATED_INITIALIZER;

@end
