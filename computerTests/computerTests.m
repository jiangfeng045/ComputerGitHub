//
//  computerTests.m
//  computerTests
//
//  Created by キョウ　ミネ on 12/11/08.
//  Copyright (c) 2012年 kitakyu. All rights reserved.
//

#import "computerTests.h"
#import "kitakyuState.h"

kitakyuState* stateMachine;

@implementation computerTests



- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    stateMachine = [[kitakyuState alloc] init];   //stateMachine 初期化
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testPushNumber
{
    // t=1
    // x1=2.0
    // Number=8
    
    // result : x1=2.8 t=2
    
    [stateMachine setT:1]; // t=1;
    [stateMachine setX1:2.0]; // x1=2.0;
    
    [stateMachine pushNumber:8]; // pushNumber:8
    
    STAssertEqualsWithAccuracy(2.8, [stateMachine x1], 0.00001, @"x1 is wrong.");
    STAssertEquals(2, [stateMachine t], @"t is wrong");
}



@end
