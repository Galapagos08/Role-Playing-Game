//
//  outerwear enum.c
//  Role Playing Game
//
//  Created by Dan Esrey on 2016/18/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#include "outerwear enum.h"

char *OuterwearGetStringName (Outerwear input) {
    switch (input) {
        case OuterwearCloak:{
            return "Cloak";
        }
        case OuterwearHooded_Robe: {
            return "Hooded Robe";
        }
        case OuterwearBody_Armor: {
            return "Body Armor";
        }
        case OuterwearTrenchcoat: {
            return "Trenchcoat";
        }
        case OuterwearEVA_Suit: {
            return "EVA Suit";
        }
        case OuterwearLeather_Jacket: {
            return "Leather Jacket";
        }
        default: {
            return NULL;
        }
    }
}
