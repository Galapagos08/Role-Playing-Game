//
//  main.m
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/18/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Userinput.h"
#import "Character.h"

int getUserName(char userName[], char *prompt);

int main(int argc, const char * argv[]) {
   
    char userName[100] = "\0";
    int numberOfItemsScanned = 0;
    while (numberOfItemsScanned != 1) {
        numberOfItemsScanned = getUserName(userName, "What is your name?\n");
    }    
    @autoreleasepool {
        NSLog(@"Hello %s", userName);
    }
    return 0;
    
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

