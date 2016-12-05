//
//  ThirdViewController.m
//  BroadcastNotification-1
//
//  Created by Student-004 on 24/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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

- (IBAction)broadcasttest1:(id)sender
{
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc]init];
    [dic setValue:@"Akshay" forKey:@"fname"];
    [dic setValue:@"Pune" forKey:@"address"];
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"Test1" object:self userInfo:dic];
}

- (IBAction)broadcasttest2:(id)sender
{

     [[NSNotificationCenter defaultCenter]postNotificationName:@"Test2" object:self userInfo:nil];
}
@end
