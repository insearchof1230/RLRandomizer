//
//  RLRandomizer.m
//  RLRandomizer
//
//  Created by Adrian Crutchfield on 10/29/13.
//  Copyright (c) 2013 Adrian Crutchfield. All rights reserved.
//

#import "RLRandomizer.h"

@implementation RLRandomizer
NSString *stage1 = @"abcdefghijklmnopqrstuvwxyz";
NSString *stage2 = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
NSString *stage3 = @"abcdefghijklmnopqrstuvwxyz0123456789";
NSString *stage4 = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
NSString *stage5 = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
NSString *stage6 = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
NSString *stage7 = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#$%^&*_-+=<>?~";
NSString *stageNum;

-(NSString *)genRandStringLength:(int)len type:(int)stage
{
    NSMutableString *randomString = [NSMutableString stringWithCapacity:len];

    switch (stage) {
        case 1:
           stageNum = [stage1 copy];
            break;
        case 2:
            stageNum = [stage2 copy];
            break;
        case 3:
            stageNum = [stage3 copy];
            break;
        case 4:
            stageNum = [stage4 copy];
            break;
        case 5:
            stageNum = [stage5 copy];
            break;
        case 6:
            stageNum = [stage6 copy];
            break;
        case 7:
            stageNum = [stage7 copy];
            break;
        default:
            break;
    }
    
    
    for (int i=0; i<len; i++) {
        [randomString appendFormat: @"%C", [stageNum characterAtIndex: arc4random() % [stageNum length]]];
    }
    
    return randomString;
}

@end
