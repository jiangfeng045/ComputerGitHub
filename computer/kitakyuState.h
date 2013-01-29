//
//  kitakyuState.h
//  computer
//
//  Created by キョウ　ミネ on 13/01/10.
//  Copyright (c) 2013年 kitakyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class kitakyuViewController;

@interface kitakyuState : UIViewController{    //a=1の時足し算、b=1の時引き算、c=1の時かけ算、d=1の時割り算、n=1の時イコール
    int n,a,b,c,d;
}

@property enum State {plus,minus,equal} state;
@property double x1;                           //x1は今入力する数字
@property double x2;                           //x2は前入力した数字
@property double ans;                          //ansは四則演算による結果
@property int t;                               //tは小数点

-(void)pushNumber:(double)Number;
-(double)jia:(id)sender controller:(kitakyuViewController*)controller;
-(double)jian:(id)sender controller:(kitakyuViewController*)controller;
-(double)cheng:(id)sender controller:(kitakyuViewController*)controller;
-(double)chu:(id)sender controller:(kitakyuViewController*)controller;
-(double)zhengfu:(id)sender controller:(kitakyuViewController*)controller;
-(double)dengyu:(id)sender controller:(kitakyuViewController*)controller;
-(double)ac:(id)sender controller:(kitakyuViewController*)controller;
-(double)dian:(id)sender controller:(kitakyuViewController*)controller;

@end

