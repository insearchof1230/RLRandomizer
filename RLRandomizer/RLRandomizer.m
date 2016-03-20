//
//  RLRandomizer.m
//  RLRandomizer
//
//  Created by Adrian Crutchfield on 10/29/13.
//  Copyright (c) 2013 Adrian Crutchfield. All rights reserved.
//

#import "RLRandomizer.h"

@implementation RLRandomizer
NSString *lower = @"abcdefghijklmnopqrstuvwxyz";
NSString *upper = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
NSString *numbers = @"0123456789";
NSString *special = @"!#$%^&*_-+=<>?~";

NSString *stageNum;

-(NSString *)generateRandomString:(int)length type:(int)stage
{
    NSMutableString *randomString = [NSMutableString stringWithCapacity:length];

    switch (stage) {
        case 1:
           stageNum = [lower copy];
            break;
        case 2:
            stageNum = [[lower stringByAppendingString:upper] copy];
            break;
        case 3:
            stageNum = [[lower stringByAppendingString:numbers] copy];
            break;
        case 4:
            stageNum = [upper copy];
            break;
        case 5:
            stageNum = [[upper stringByAppendingString:numbers] copy];
            break;
        case 6:
            stageNum = [[lower stringByAppendingString:[upper stringByAppendingString:numbers]] copy];
            break;
        case 7:
            stageNum = [[lower stringByAppendingString:[upper stringByAppendingString:[numbers stringByAppendingString:special]]] copy];
            break;
        case 8:
            stageNum = [numbers copy];
            break;
        default:
            break;
    }
    
    for (int i=0; i<length; i++) {
        [randomString appendFormat: @"%C", [stageNum characterAtIndex: arc4random() % [stageNum length]]];
    }
    
    return randomString;
}

@end
