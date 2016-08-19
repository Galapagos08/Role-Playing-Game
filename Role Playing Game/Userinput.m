//
//  Userinput.m
//  ObjCGuessing
//
//  Created by Dan Esrey on 2016/16/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Userinput.h"
#include <string.h>

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
NSString *getColorFromUser(char *charStar) {
    fpurge(stdin);
    printf("What is your favorite color?\n");
    
    char color[100] = "\0";
    
    
    int numberOfItemsScanned = 0;
    numberOfItemsScanned = scanf("%[^\n]s", color);
    return @(color);
}
int getUserName(char userName[], char *prompt) {
    
    int numberOfItemsScanned = 0;
    while (numberOfItemsScanned != 1) {
        fpurge(stdin);
        printf("%s", prompt);
        numberOfItemsScanned = scanf("%[^\n]s", userName);
    }
    
    return numberOfItemsScanned;
}

