//
//  kitakyuViewController.m
//  computer
//
//  Created by キョウ　ミネ on 12/11/08.
//  Copyright (c) 2012年 kitakyu. All rights reserved.
//

#import "kitakyuViewController.h"

@interface kitakyuViewController ()

@end

@implementation kitakyuViewController

@synthesize model;

- (void)viewDidLoad
{
    [super viewDidLoad];
    model=[[kitakyuState alloc] init];
    
    [model setState:plus];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)push0:(id)sender {

    [model pushNumber:0];
    [[self label] setText:[NSString stringWithFormat:@"%f",model.x1]];

}

- (IBAction)push1:(id)sender {
    
    [model pushNumber:1];
    [[self label] setText:[NSString stringWithFormat:@"%f",model.x1]];

}

- (IBAction)push2:(id)sender {
    
    [model pushNumber:2];
    [[self label] setText:[NSString stringWithFormat:@"%f",model.x1]];

}

- (IBAction)push3:(id)sender {
    
    [model pushNumber:3];
    [[self label] setText:[NSString stringWithFormat:@"%f",model.x1]];

}

- (IBAction)push4:(id)sender {
    
    [model pushNumber:4];
    [[self label] setText:[NSString stringWithFormat:@"%f",model.x1]];

}

- (IBAction)push5:(id)sender {
    
    [model pushNumber:5];
    [[self label] setText:[NSString stringWithFormat:@"%f",model.x1]];

}

- (IBAction)push6:(id)sender {
    
    [model pushNumber:6];
    [[self label] setText:[NSString stringWithFormat:@"%f",model.x1]];

}

- (IBAction)push7:(id)sender {
    
    [model pushNumber:7];
    [[self label] setText:[NSString stringWithFormat:@"%f",model.x1]];

}

- (IBAction)push8:(id)sender {
    
    [model pushNumber:8];
    [[self label] setText:[NSString stringWithFormat:@"%f",model.x1]];

}

- (IBAction)push9:(id)sender {
    
    [model pushNumber:9];
    [[self label] setText:[NSString stringWithFormat:@"%f",model.x1]];

}


// リセット関数
- (IBAction)ac:(id)sender {
    
    ans=[model ac:sender controller:self];
    [[self label] setText:[NSString stringWithFormat:@"%f\n",ans]];

}

//足し算関数  a=1と設定する
- (IBAction)jia:(id)sender {
     ans=[model jia:sender controller:self];
    [[self label] setText:[NSString stringWithFormat:@"%f\n",ans]];

}


//引き算関数 b=1と設定する
- (IBAction)jian:(id)sender {
   [model dengyu:sender controller:self];       //1+2-3=0 ができるように、引き算する前に一度イコール関数を実行する。
    ans=[model jian:sender controller:self];
    [[self label] setText:[NSString stringWithFormat:@"%f\n",ans]];

}

//かけ算関数 c=1と設定する
- (IBAction)cheng:(id)sender {
    ans=[model cheng:sender controller:self];
    [[self label] setText:[NSString stringWithFormat:@"%f\n",ans]];

}

//割り算関数 d=1と設定する
- (IBAction)chu:(id)sender {
    ans=[model chu:sender controller:self];
    [[self label] setText:[NSString stringWithFormat:@"%f\n",ans]];

}

//正負の変更関数
- (IBAction)zhengfu:(id)sender {
    x1=[model zhengfu:sender controller:self];
    [[self label] setText:[NSString stringWithFormat:@"%f\n",x1]];

}


//イコール　関数
- (IBAction)dengyu:(id)sender {
    ans=[model dengyu:sender controller:self];
    [[self label] setText:[NSString stringWithFormat:@"%f\n",ans]];

}


//小数点関数
- (IBAction)dian:(id)sender {
   [model dian:sender controller:self];

}
@end
