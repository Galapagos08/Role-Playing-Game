//
//  main.m
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/18/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Userinput.h"
#import "Clothing.h"
#import "outerwear enum.h"


int main(int argc, const char * argv[]) {
    
    char userName[100] = "\0";
    int numberOfItemsScanned = 0;
    while (numberOfItemsScanned != 1) {
        numberOfItemsScanned = getUserName(userName, "What is your character name?\n");
    }
    
    Outerwear outerwearChosen = OuterwearNull;
    int numberOfClothingItemsScanned = 0;
    
    while ((numberOfClothingItemsScanned != 1) ||
           (outerwearChosen < OuterwearFirst) || (outerwearChosen > OuterwearLast)) {
        fpurge(stdin);
        printf("\nWhat clothing would you like %s to wear? Please enter:\n", userName);
        printf("    %d for Cloak\n", OuterwearCloak);
        printf("    %d for Hooded Robe\n", OuterwearHooded_Robe);
        printf("    %d for Body Armor\n", OuterwearBody_Armor);
        printf("    %d for Trenchcoat\n", OuterwearTrenchcoat);
        printf("    %d for EVA Suit\n", OuterwearEVA_Suit);
        printf("    %d for Leather Jacket\n", OuterwearLeather_Jacket);
        
        numberOfClothingItemsScanned = scanf("%d", &outerwearChosen);
    }
    
    char *outerwearAsString = OuterwearGetStringName(outerwearChosen);
    
    @autoreleasepool {
        Character *identity = [[Character alloc] initWithName:@(userName)
                                                     clothing:@(outerwearAsString)];
        
        NSLog(@"\n\nHello %@. You are wearing your %@.\n\n", [identity name], [identity outerwearAsString]);
        
        return 0;
    }
}
