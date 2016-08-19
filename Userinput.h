//
//  Userinput.h
//  ObjCGuessing
//
//  Created by Dan Esrey on 2016/16/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>

NSNumber *getNumberFromUser(int maxValidChoice);

NSString *getStringFromUser(char *charStar);

int getUserName(char userName[], char *prompt);
