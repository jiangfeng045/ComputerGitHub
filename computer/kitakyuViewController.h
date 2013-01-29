//
//  kitakyuViewController.h
//  computer
//
//  Created by キョウ　ミネ on 12/11/08.
//  Copyright (c) 2012年 kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "kitakyuState.h"

@interface kitakyuViewController : UIViewController{
    double x1;
    double x2;
    double ans;
    int t;
    int n,a,b,c,d;
}

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (readonly) kitakyuState* model;

@property enum {x1,x2,ans} state;

- (IBAction)push0:(id)sender;

- (IBAction)push1:(id)sender;
- (IBAction)push2:(id)sender;
- (IBAction)push3:(id)sender;
- (IBAction)push4:(id)sender;
- (IBAction)push5:(id)sender;
- (IBAction)push6:(id)sender;
- (IBAction)push7:(id)sender;
- (IBAction)push8:(id)sender;
- (IBAction)push9:(id)sender;
- (IBAction)ac:(id)sender;
- (IBAction)jia:(id)sender;
- (IBAction)jian:(id)sender;
- (IBAction)cheng:(id)sender;
- (IBAction)chu:(id)sender;
- (IBAction)zhengfu:(id)sender;


- (IBAction)dengyu:(id)sender;

- (IBAction)dian:(id)sender;
@end
