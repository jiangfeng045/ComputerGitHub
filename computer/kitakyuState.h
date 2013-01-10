//
//  kitakyuState.h
//  computer
//
//  Created by キョウ　ミネ on 13/01/10.
//  Copyright (c) 2013年 kitakyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class kitakyuViewController;

@interface kitakyuState : NSObject

@property enum State {X1,X2,ans} state;

-(void)push:(id)sender controller:(kitakyuViewController*)controller;

@end
