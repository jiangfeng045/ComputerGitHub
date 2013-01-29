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
@synthesize x1;
@synthesize x2;
@synthesize ans;
@synthesize t;

-(void)pushNumber:(double)Number{
    if(t==0){
        x1 = x1*10+Number;
   
    }else{
        x1 = x1 + pow(10,-t)*Number;
        t=t+1;

    }
}

//足し算関数
-(double)jia:(id)sender controller:(kitakyuViewController *)controller
{
    if(n==0&&a==0){
        x2=x1;
        t=0;
        x1=0;
    }
    else if(n==0&&a==1){
        x2=x2+x1;
        x1=0;
        ans=x2;
    }
    else{
        x2=ans;
        t=0;
        n=0;
        x1=0;
    }
    a=1;
    b=0;
    c=0;
    d=0;
    return ans;
}


//引き算関数
-(double)jian:(id)sender controller:(kitakyuViewController *)controller
{
    if(n==0&&a==0){
        x2=x1;
        t=0;
        x1=0;
    }
    else if(n==0&&b==1){
        x2=x2-x1;
        x1=0;
        ans=x2;
    }
    else{
        x2=ans;
        t=0;
        n=0;
        x1=0;
    }
    a=0;
    b=1;
    c=0;
    d=0;        
    return ans;    
}

//かけ算関数
-(double)cheng:(id)sender controller:(kitakyuViewController *)controller
{
    if(n==0&&c==0){
        x2=x1;
        t=0;
        x1=0;
    }
    else if(n==0&&c==1){
        x2=x2*x1;
        x1=0;
        ans=x2;
    }
    else{
        x2=ans;
        t=0;
        n=0;
        x1=0;
    }
    a=0;
    b=0;
    c=1;
    d=0;
    return ans;
}

//割り算関数
-(double)chu:(id)sender controller:(kitakyuViewController *)controlle
{
    if(n==0&&d==0){
        x2=x1;
        t=0;
        x1=0;}
    else if(n==0&&d==1){
        x2=x2/x1;
        x1=0;
        ans=x2;   }
    else{
        x2=ans;
        t=0;
        n=0;
        x1=0;
    }
    a=0;
    b=0;
    c=0;
    d=1;
    return ans;
}
-(double)zhengfu:(id)sender controller:(kitakyuViewController *)controller
{
    x1=-x1;
    return x1;
}

//リセット関数
-(double)ac:(id)sender controller:(kitakyuViewController *)controller
{
    t=0;
    x1=0;
    x2=0;
    ans=0;
    n=0;
    a=0;
    b=0;
    c=0;
    d=0;
    
    return ans;
    
}


//イコール関数
-(double)dengyu:(id)sender controller:(kitakyuViewController *)controller
{

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
    else{
        ans=x1;
    }
    
    n=1;
    
    return ans;
}


//小数点関数
-(double)dian:(id)sender controller:(kitakyuViewController *)controller
{
    if(t==0){
        t=1;
    }
    else t=t;
    return t;
}



@end
