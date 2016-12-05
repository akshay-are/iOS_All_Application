//
//  ViewController.m
//  BroadcastNotification-1
//
//  Created by Student-004 on 24/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(listen:) name:@"Test1" object:nil];

    
}

-(void)listen:(NSNotification *)notification
{
    NSLog(@"%@",[notification userInfo]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
