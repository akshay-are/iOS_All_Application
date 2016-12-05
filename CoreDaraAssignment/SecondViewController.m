//
//  SecondViewController.m
//  CoreDaraAssignment
//
//  Created by Student-004 on 18/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstTableViewController.h"
#import "AppDelegate.h"
#import "Detail.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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

- (IBAction)savebtn:(id)sender {
    
    UIApplication *myapplication=[UIApplication sharedApplication];
    AppDelegate *myappdel=(AppDelegate *)myapplication.delegate;
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    
    Detail *d1=[NSEntityDescription insertNewObjectForEntityForName:@"Detail" inManagedObjectContext:context];
    int a=[_idtext.text intValue];
    d1.pid=[NSNumber numberWithInt:a];
    d1.pname=_nametext.text;
    d1.paddress=_addresstext.text;
    d1.pmobile=[NSNumber numberWithInteger:(int)_mobiletext.text];
    
    [context save:nil];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
