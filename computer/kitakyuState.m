//
//  kitakyuState.m
//  computer
//
//  Created by キョウ　ミネ on 13/01/10.
//  Copyright (c) 2013年 kitakyu. All rights reserved.
//

#import "kitakyuState.h"
#import "kitakyuViewController.h"

@implementation kitakyuState

@synthesize state;

-(void)push:(id)sender controller:(kitakyuViewController *)controller
{
    switch ([self state]){
        case X1:
            [self setState:X2];
            [controller setTextToX2];
            break;
            
        case X2:
            [self setState:X1];
            [controller setTextToX1];
            break;
    }
}

@end
