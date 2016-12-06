//
//  ViewController.m
//  LocalNotification-1
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)notificationbutton:(id)sender {
    
    
    UILocalNotification *notification1=[[UILocalNotification alloc]init];
    
    notification1.alertBody=@"This is body of the notification";
    notification1.alertTitle=@"This is notification";
    
    notification1.fireDate=[NSDate dateWithTimeIntervalSinceNow:10];
    
    [[UIApplication sharedApplication]scheduleLocalNotification:notification1];
    
    [UIApplication sharedApplication].applicationIconBadgeNumber +=1;
    
    
}
@end
