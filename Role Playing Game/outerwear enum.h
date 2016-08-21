//
//  outerwear enum.h
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/18/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#ifndef outerwear_enum_h
#define outerwear_enum_h
#include <stdio.h>
#include <limits.h>

typedef enum Outerwear {
    OuterwearCloak = 1,
    OuterwearHooded_Robe,
    OuterwearBody_Armor,
    OuterwearTrenchcoat,
    OuterwearEVA_Suit,
    OuterwearLeather_Jacket,
    OuterwearNull = INT_MIN,
    OuterwearFirst = OuterwearCloak,
    OuterwearLast = OuterwearLeather_Jacket
    
} Outerwear;

NSString *OuterwearGetStringName (Outerwear outerwear);

typedef enum Color {
    ColorRed = 1,
    ColorOrange,
    ColorYellow,
    ColorGreen,
    ColorBlue,
    ColorBrown,
    ColorViolet,
    ColorBlack,
    ColorWhite,
    ColorNull = INT_MIN,
    ColorFirst = ColorRed,
    ColorLast = ColorWhite
    
} Color;

NSString *ColorGetStringName(Color color);


#endif /* outerwear_enum_h */
