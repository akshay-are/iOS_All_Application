//
//  ThirdViewController.m
//  CoreDataPractice
//
//  Created by Ashlesha on 27/12/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import "ThirdViewController.h"
#import "Department.h"
#import "AppDelegate.h"
#import "Department+CoreDataProperties.h"

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

- (IBAction)submitdept:(id)sender {
    
    
    UIApplication *myapplication=[UIApplication sharedApplication];
    AppDelegate *myappdel=(AppDelegate *)myapplication.delegate;
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    
    Department *d1=[NSEntityDescription insertNewObjectForEntityForName:@"Department" inManagedObjectContext:context];
    d1.deptid=_idtextdept.text;
    d1.deptname=_nametextdept.text;
    NSLog(@" ID:- %@   NAME:-%@",d1.deptid,d1.deptname);
    [context save:nil];
    NSLog(@"Record Save");
    [self.navigationController popViewControllerAnimated:YES];
    
    
    
}
@end
