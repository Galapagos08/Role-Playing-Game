//
//  Character.h
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/18/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject {
    
}

@property (nonatomic) NSString *name;

- (instancetype)initWithName:(NSString *)name NS_DESIGNATED_INITIALIZER;

@end
