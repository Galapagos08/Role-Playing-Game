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
    
    Color colorChosen = ColorNull;
    int numberOfColorItemsScanned = 0;
    
    while ((numberOfColorItemsScanned != 1) ||
           (colorChosen < ColorFirst) || (colorChosen > ColorLast)) {
        fpurge(stdin);
        printf("\nWhat color would you like your character's %d to be? Please enter:\n", outerwearChosen);
        printf("    %d for red\n", ColorRed);
        printf("    %d for orange\n", ColorOrange);
        printf("    %d for yellow\n", ColorYellow);
        printf("    %d for green\n", ColorGreen);
        printf("    %d for blue\n", ColorBlue);
        printf("    %d for indigo\n", ColorIndigo);
        printf("    %d for violet\n", ColorViolet);
        printf("    %d for black\n", ColorBlack);
        printf("    %d for white\n", ColorWhite);
        numberOfItemsScanned = scanf("%d", &colorChosen);
    }
    
    char *colorAsString = ColorGetStringName(colorChosen);
    
    
    @autoreleasepool {
        Character *identity = [[Character alloc] initWithName:@(userName)
                                                     clothing:@(outerwearAsString)];
        
        Clothing *style = [[Clothing alloc] initWithColor:@(colorAsString)];
        
        NSLog(@"\n\nHello %@. You are wearing your %@, which is a splendid shade of %@.\n\n", [identity name], [identity outerwearAsString], [style colorAsString]);
        
        return 0;
    }
}
