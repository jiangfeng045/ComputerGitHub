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

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setState:x1];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)push0:(id)sender {
    if(t==0){
        x1 = x1*10+0;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }else{
        x1 = x1 + pow(10,-t)*0;
        t=t+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }
}

- (IBAction)push1:(id)sender {
    if(t==0){
        x1 = x1*10+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }else{
        x1 = x1 + pow(10,-t)*1;
        t=t+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }
}

- (IBAction)push2:(id)sender {
    if(t==0){
        x1 = x1*10+2;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }else{
        x1 = x1 + pow(10,-t)*2;
        t=t+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }
}

- (IBAction)push3:(id)sender {
    if(t==0){
        x1 = x1*10+3;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }else{
        x1 = x1 + pow(10,-t)*3;
        t=t+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }
}

- (IBAction)push4:(id)sender {
    if(t==0){
        x1 = x1*10+4;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }else{
        x1 = x1 + pow(10,-t)*4;
        t=t+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }
}

- (IBAction)push5:(id)sender {
    if(t==0){
        x1 = x1*10+5;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }else{
        x1 = x1 + pow(10,-t)*5;
        t=t+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }
}

- (IBAction)push6:(id)sender {
    if(t==0){
        x1 = x1*10+6;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }else{
        x1 = x1 + pow(10,-t)*6;
        t=t+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }
}

- (IBAction)push7:(id)sender {
    if(t==0){
        x1 = x1*10+7;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }else{
        x1 = x1 + pow(10,-t)*7;
        t=t+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }
}

- (IBAction)push8:(id)sender {
    if(t==0){
        x1 = x1*10+8;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }else{
        x1 = x1 + pow(10,-t)*8;
        t=t+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }
}

- (IBAction)push9:(id)sender {
    if(t==0){
        x1 = x1*10+9;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }else{
        x1 = x1 + pow(10,-t)*9;
        t=t+1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    }
}

- (IBAction)ac:(id)sender {
    [[self label] setText:@"0"];
    t=0;
    x1=0;
    x2=0;
    ans=0;
    n=0;
    a=0;
    b=0;
    c=0;
    d=0;
}

- (IBAction)jia:(id)sender {
    if(n==0&&a==0){
        x2=x1;
        t=0;
        x1=0;
        a=1;
        }
    else if(n==0&&a==1){
        x2=x2+x1;
        ans=x2;
           [[self label] setText:[NSString stringWithFormat:@"%f\n",ans]];    
    }
    
    
    else{
        x2=ans;
        t=0;
        n=0;
        x1=0;
    }
    b=0;
    c=0;
    d=0;
}

- (IBAction)jian:(id)sender {
    if(n==0){
        x2=x1;
        t=0;
        x1=0;}else{
            x2=ans;
            t=0;
            n=0;
            x1=0;
        }
    a=0;
    b=1;
    c=0;
    d=0;
}

- (IBAction)cheng:(id)sender {
    
    if(n==0){
        x2=x1;
        t=0;
        x1=0;}else{
            x2=ans;
            t=0;
            n=0;
            x1=0;
        }
    a=0;
    b=0;
    c=1;
    d=0;
}

- (IBAction)chu:(id)sender {
    if(n==0){
        x2=x1;
        t=0;
        x1=0;}else{
            x2=ans;
            t=0;
            n=0;
            x1=0;
        }
    a=0;
    b=0;
    c=0;
    d=1;
}

- (IBAction)zhengfu:(id)sender {
    x1=-x1;
        [[self label] setText:[NSString stringWithFormat:@"%f",x1]];
    
}

- (IBAction)dengyu:(id)sender {
    
    
    
    if(a==1){
        x2=x2+x1;
        ans=x2;
    }
    else if(b==1){
        x2=x2-x1;
        ans=x2;
    }
    else if(c==1){
        x2=x2*x1;
        ans=x2;
    }
    else if(d==1){
        x2=x2/x1;
        ans=x2;
    }
 
    else {ans=x1;}
    
    n=1;
    
    if(ans<0.000001||ans>-0.000001||ans<-100000000||ans>100000000){
        [[self label] setText:[NSString stringWithFormat:@"%e\n",ans]];
    }else{
        [[self label] setText:[NSString stringWithFormat:@"%f\n",ans]];
    }

}

- (IBAction)dian:(id)sender {
    if(t==0)
        t=1;
    else t=t;
}
@end
