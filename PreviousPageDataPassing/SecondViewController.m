//
//  SecondViewController.m
//  PreviousPageDataPassing
//
//  Created by Student-004 on 14/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize delegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)btn1:(id)sender
{
    
    [self.delegate data:self.tf1.text];
    [self.navigationController popViewControllerAnimated:YES];
    
    
}
@end
