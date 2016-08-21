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
        printf("    %d for brown\n", ColorBrown);
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
        
        NSLog(@"\n\n%@, you are standing on a forest road outside the Inn of the Shuffling Donkey. Inside the pocket of your %@ %@ is a letter you received from your cousin, Hornswelter. Do you want to read the letter, or go inside the inn?\n\n(1 = Read letter/ 2 = Enter the Inn of the Shuffling Donkey)\n", [identity name], [style color], [identity outerwear]);
        
        NSNumber *letterOrInn = getNumberFromUser(2);
            if ([letterOrInn intValue] == 1) {
                NSLog(@"\n\nYou retrieve the letter from the pocket of your %@ %@.\n\n", [style color], [identity outerwear]);
                letter();
                NSLog(@"\n\nAs you enter the Inn of the Shuffling Donkey, you see a large fireplace in the center of the room with several tables on either side. Men, women, and other folk are gathered round the various tables telling tales, singing songs, or sharing hushed conversation. Everyone is drinking. In the left-hand corner in the rear of the room is a bar where a man you assume is the tavernkeeper is wiping a metal stein with a rag.");
            } else {
                NSLog(@"\n\nAs you enter the Inn of the Shuffling Donkey, you see a large fireplace in the center of the room with several tables on either side. In the left-hand corner in the rear of the room is a bar where a man you assume is the tavernkeeper is wiping a metal stein with a rag.");
            }
        NSLog(@"jhj");
    }
    
    /*        NSLog(@"\n\nOkay, %@, is there anything you'd like to say?\n\n", [identity name]);
     
     NSLog(@"%@", getStringFromUser());*/
    
    return 0;
}
