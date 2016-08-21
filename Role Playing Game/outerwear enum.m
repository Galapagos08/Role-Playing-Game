//
//  outerwear enum.m
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/18/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#include "outerwear enum.h"

NSString *OuterwearGetStringName (Outerwear outerwear) {
    switch (outerwear) {
        case OuterwearCloak:{
            return @"cloak";
        }
        case OuterwearHooded_Robe: {
            return @"hooded robe";
        }
        case OuterwearBody_Armor: {
            return @"body armor";
        }
        case OuterwearTrenchcoat: {
            return @"trenchcoat";
        }
        case OuterwearEVA_Suit: {
            return @"EVA suit";
        }
        case OuterwearLeather_Jacket: {
            return @"leather jacket";
        }
        default: {
            return NULL;
        }
    }
}
NSString *ColorGetStringName(Color input) {
    switch (input) {
        case ColorRed: {
            return @"red";
        }
        case ColorOrange: {
            return @"orange";
        }
        case ColorYellow: {
            return @"yellow";
        }
        case ColorGreen: {
            return @"green";
        }
        case ColorBlue: {
            return @"blue";
        }
        case ColorBrown: {
            return @"brown";
        }
        case ColorViolet: {
            return @"violet";
        }
        case ColorBlack: {
            return @"black";
        }
        case ColorWhite: {
            return @"white";
        }
        default: {
            return NULL;
        }
    }
}
