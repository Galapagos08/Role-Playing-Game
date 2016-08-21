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
        } else {
            NSLog(@"\n\nYou approach the large wooden door to the inn and open it wide.\n\n");
        }
        NSLog(@"\n\nAs you enter the Inn of the Shuffling Donkey, you see a large fireplace in the center of the room with several tables on either side. Men, women, and other folk are gathered round the various tables telling tales, singing songs, or sharing hushed conversation. Everyone is drinking. In the left-hand corner in the rear of the room is a bar where a man you assume is the tavernkeeper is wiping a metal stein with a rag. There's also a small, empty table against the far wall behind the fireplace.\n\n");
        NSLog(@"\n\nWould you like to go to the bar or have a seat at the empty table?\n\n(1 = go to the bar/ 2 = sit at the empty table)\n\n");
        NSNumber *barOrTable = getNumberFromUser(2);
        if ([barOrTable intValue] == 1) {
            NSLog(@"\n\nYou make your way back to the bar and are about to speak to the man you believe to be the tavernkeeper when he asks you, 'Something I can do for you?'\n\n");
        } else {
            NSLog(@"\n\nYou make your way to the empty table, but before you can sit down, the man who had been behind the bar approaches you and asks, 'Something I can do for you?'\n\n");
        }
        NSLog(@"\n\nYou answer the man, 'Hello. My name is %@, and I am looking for a tavernkeeper named Elwood.'\n\n", [identity name]);
        NSLog(@"\n\nThe man gives you an odd look, as though he is unsure how to respond. After a moment, he asks, 'Do you know Elwood? Are you a friend of his?'\n\nYou respond that, no, you do not know Elwood. You tell the man that your cousin, Hornswelter, asked you in a letter to speak to Elwood about a matter of some importance.\n\nThe man thinks for a moment before speaking. When he does speak, he asks, 'May I see this letter?'\n\n");
        NSLog(@"Do you show him the letter?\n\n(1 = show letter/ 2 = politely refuse)");
        NSNumber *showLetter = getNumberFromUser(2);
        if ([showLetter intValue] == 1) {
            NSLog(@"\n\nNot thinking there's any harm in it, you show the man the letter. After reading it carefully, the man hands the letter back to you and says, 'I'm Elwood. But I am afraid I do not know where your cousin is. I haven't seen him in more than a fortnight.\n\n");
        } else {
            NSLog(@"\n\nYou tell the man, 'I'm sorry, but I really must speak to Elwood. Do you know where he is?'\n\n");
            NSLog(@"\n\n%@, I'm Elwood. If there's a letter that mentions me, I think I'd like to see it before talking any further.\n\nRealizing you need his help, you show the man your letter. After reading it, Elwood exhales and says, 'I'm sorry, but I haven't seen your cousin in more than a fortnight.'\n\n", [identity name]);
        }
        NSLog(@"\n\nSaddened by this news, you need a moment to gather your thoughts and decide what to do next. Sensing your hesitation, Elwood asks if you would like a drink. Thinking a drink would do you good, you tell him you would like a drink. Elwood asks you, 'what would you like?'\n\n");
        NSLog(@"Please enter a one-word drink name:\n\n");
        NSLog(@"\n\nYou know, I could really go for a %@.\n\n", getStringFromUser());
        NSLog(@"\n\n- - - TO BE CONTINUED - - -");
     }
    return 0;
}
