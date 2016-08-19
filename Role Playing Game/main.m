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
#import "some enum.h"

int getUserName(char userName[], char *prompt);

int main(int argc, const char * argv[]) {
    
    char userName[100] = "\0";
    int numberOfItemsScanned = 0;
    while (numberOfItemsScanned != 1) {
        numberOfItemsScanned = getUserName(userName, "What is your character name?\n");
    }
    @autoreleasepool {
        NSLog(@"Hello %s\n", userName);
    }
    
    printf("What would you like your character to wear?\n");
    
    Outerwear outerwearChosen = OuterwearNull;
    int numberOfClothingItemsScanned = 0;
    
    while ((numberOfClothingItemsScanned != 1) ||
           (outerwearChosen < OuterwearFirst) || (outerwearChosen > OuterwearLast)) {
        fpurge(stdin);
        printf("\nPlease enter:\n");
        printf("    %d for Cloak\n", OuterwearCloak);
        printf("    %d for Hooded Robe\n", OuterwearHooded_Robe);
        printf("    %d for Body Armor\n", OuterwearBody_Armor);
        printf("    %d for Trenchcoat\n", OuterwearTrenchcoat);
        printf("    %d for EVA Suit\n", OuterwearEVA_Suit);
        printf("    %d for Leather Jacket\n", OuterwearLeather_Jacket);
        
        numberOfClothingItemsScanned = scanf("%d", &outerwearChosen);
    }
    
    char *outerwearAsString = OuterwearGetStringName(outerwearChosen);
    printf("\nYou chose the outerwear %s\n\n", outerwearAsString);
    
    
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

