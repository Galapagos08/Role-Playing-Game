//
//  Userinput.m
//  ObjCGuessing
//
//  Created by Dan Esrey on 2016/16/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Userinput.h"

NSNumber *getNumberFromUser(int maxValidChoice) {
    int choice = -1;
    int numberOfItemsScanned = 0;
    
    int firstValidChoice = 0;
    
    while ((numberOfItemsScanned !=1) && ((choice < firstValidChoice) || (choice > maxValidChoice))) {
        printf("enter a number between 0 and %d", maxValidChoice);
        fpurge(stdin);
        numberOfItemsScanned = scanf("%d", &choice);
        
    }
    return @(choice);
}

int getUserName(char yourName[], char *prompt) {
    
    int numberOfItemsScanned = 0;
    while (numberOfItemsScanned != 1) {
        fpurge(stdin);
        printf("%s", prompt);
        numberOfItemsScanned = scanf("%[^\n]s", yourName);
    }
    
    return numberOfItemsScanned;
}

NSString *getStringFromUser(NSString *name) {
    
    char yourName[100] = "\0";

    int numberOfItemsScanned = 0;
    while (numberOfItemsScanned != 1) {
        numberOfItemsScanned = getUserName(yourName, "What is your name?\n");
    }
    return @(yourName);
}

