//
//  some enum.h
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/18/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#ifndef some_enum_h
#define some_enum_h
#include <stdio.h>
#include <limits.h>

typedef enum Outerwear {
    OuterwearCloak =1,
    OuterwearHooded_Robe,
    OuterwearBody_Armor,
    OuterwearTrenchcoat,
    OuterwearEVA_Suit,
    OuterwearLeather_Jacket,
    OuterwearNull = INT_MIN,
    OuterwearFirst = OuterwearCloak,
    OuterwearLast = OuterwearLeather_Jacket
    
} Outerwear;

char *OuterwearGetStringName (Outerwear input);



#endif /* some_enum_h */
