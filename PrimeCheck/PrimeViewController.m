//
//  PrimeViewController.m
//  PrimeCheck
//
//  Created by Student-004 on 23/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "PrimeViewController.h"

@interface PrimeViewController ()

@end

@implementation PrimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tf1=[[UITextField alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    _tf1.borderStyle=UITextBorderStyleRoundedRect;
    _tf1.keyboardType=UIKeyboardTypeNumberPad;
    _tf1.returnKeyType=UIReturnKeyDone;
    _tf1.delegate=self;
    [self.view addSubview:_tf1];
    
    
    _btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn1.frame=CGRectMake(100, 150, 100, 50);
    [_btn1 setTitle:@"CHECK" forState:UIControlStateNormal];
    [_btn1 setTitle:@"SELECTED" forState:UIControlStateHighlighted];
    [_btn1 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn1];
    
    
    
    
    
    
    
    
    
    
}


-(void)btnclick:(UIButton *)sender
{
    
    int n,i,flag=0;
    
    n=[_tf1.text intValue];
    
    for(i=2; i<=n/2; ++i)
    {
        // condition for nonprime number
        if(n%i==0)
        {
            flag=1;
            break;
        }
    }

    if (flag==0)
    {
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Prime Check " message:@"Number is Prime" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
    [alert show];
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Prime Check " message:@"Number is Not Prime" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
    [alert show];
    
    }
    
   // [alert show];
    
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
