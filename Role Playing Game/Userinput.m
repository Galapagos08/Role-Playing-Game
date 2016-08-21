//
//  Userinput.m
//  ObjCGuessing
//
//  Created by Dan Esrey on 2016/16/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Userinput.h"
#import "Character.h"
#include <string.h>

NSNumber *getNumberFromUser(int maxValidChoice) {
    int choice = -1;
    int numberOfItemsScanned = 0;
    
    int firstValidChoice = 1;
    
    while ((numberOfItemsScanned !=1) && ((choice < firstValidChoice) || (choice > maxValidChoice))) {
        printf("Please enter a number between 1 and %d:\n\n", maxValidChoice);
        fpurge(stdin);
        numberOfItemsScanned = scanf("%d", &choice);
        
    }
    return @(choice);
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

NSString *getStringFromUser() {
    
    char string[100] = "\0";
    fpurge(stdin);
    int numberOfStringItemsScanned = 0;
    while (numberOfStringItemsScanned != 1) {
        numberOfStringItemsScanned = scanf("%s", string);
    }
    return @(string);
}
NSString *getNameFromUser() {
    char name[100] = "\0";
    fpurge(stdin);
    int numberOfStringItemsScanned = 0;
    while (numberOfStringItemsScanned != 1) {
        numberOfStringItemsScanned = scanf("%s", name);
    }
    return @(name);
}
void letter() {
    NSLog(@"\nYou open the letter, which is dated three and a half weeks ago, and read the following:\n\nDearest cousin,\n\n    I apologize for not coming to see you in person, but I have been called away on an urgent matter requiring my immediate attention. If you have not heard from me in three weeks, I fear I will have encountered some difficulty and will be in need of your assistance.\n\n    If you are able, please go to the Inn of the Shuffling Donkey in Mouldy Hollow. Inside, you will find a tavernkeeper named Elwood. Please tell him who you are and inquire with him as to my whereabouts. Elwood will know what to do.\n\nEver yours,\n\n    Hornswelter\n\nHaving re-read your cousin's alarming letter, you decide to enter the inn and seek out Elwood.\n\n");    
}
