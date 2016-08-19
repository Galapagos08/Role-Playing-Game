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
        printf("    %d for cloak\n", OuterwearCloak);
        printf("    %d for hooded robe\n", OuterwearHooded_Robe);
        printf("    %d for body armor\n", OuterwearBody_Armor);
        printf("    %d for trenchcoat\n", OuterwearTrenchcoat);
        printf("    %d for EVA suit\n", OuterwearEVA_Suit);
        printf("    %d for leather jacket\n", OuterwearLeather_Jacket);
        
        numberOfClothingItemsScanned = scanf("%d", &outerwearChosen);
    }
    
    NSString *outerwear = OuterwearGetStringName(outerwearChosen);
    NSLog(@"\n\nWhat color would you like your character's %@ to be? Please enter:\n", outerwear);
 
    Color colorChosen = ColorNull;
    int numberOfColorItemsScanned = 0;
    
    while ((numberOfColorItemsScanned != 1) ||
           (colorChosen < ColorFirst) || (colorChosen > ColorLast)) {
        fpurge(stdin);
        printf("    %d for red\n", ColorRed);
        printf("    %d for orange\n", ColorOrange);
        printf("    %d for yellow\n", ColorYellow);
        printf("    %d for green\n", ColorGreen);
        printf("    %d for blue\n", ColorBlue);
        printf("    %d for indigo\n", ColorIndigo);
        printf("    %d for violet\n", ColorViolet);
        printf("    %d for black\n", ColorBlack);
        printf("    %d for white\n", ColorWhite);
        numberOfColorItemsScanned = scanf("%d", &colorChosen);
    }
    
    NSString *color = ColorGetStringName(colorChosen);
    
    
    @autoreleasepool {
        Character *identity = [[Character alloc] initWithName:@(userName)
                                                     clothing:outerwear];
        
        Clothing *style = [[Clothing alloc] initWithColor:color];
        
        NSLog(@"\n\nHello %@. You are wearing your %@ %@.\n\n", [identity name], [style color], [identity outerwear]);
        
        return 0;
    }
}
