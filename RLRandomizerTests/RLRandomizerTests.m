//
//  RLRandomizerTests.m
//  RLRandomizerTests
//
//  Created by Adrian Crutchfield on 10/29/13.
//  Copyright (c) 2013 Adrian Crutchfield. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RLRandomizer.h"

@interface RLRandomizerTests : XCTestCase

@end

@implementation RLRandomizerTests

- (void)setUp
{
    //[super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    //[super tearDown];
}

- (void)testExample
{

    RLRandomizer *randomizer = [[RLRandomizer alloc]init];
    
    NSLog(@"Random String:%@",[randomizer generateRandomString:25 type:2]);
    
}

@end
