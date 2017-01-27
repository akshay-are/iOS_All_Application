//
//  FIfthViewController.m
//  CoreDataPractice
//
//  Created by Ashlesha on 28/12/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import "FIfthViewController.h"
#import "AppDelegate.h"
#import "Employee.h"
#import "Employee+CoreDataProperties.h"
#import "Company+CoreDataProperties.h"
#import "Company.h"

@interface FIfthViewController ()

@end

@implementation FIfthViewController

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
    
    Company *c1=[NSEntityDescription insertNewObjectForEntityForName:@"Company" inManagedObjectContext:context];
    c1.compid=_idtextcomp.text;
    c1.compname=_nametextcomp.text;
    NSLog(@" ID:- %@   NAME:-%@",c1.compid,c1.compname);
    [context save:nil];
    NSLog(@"Record Save");
    [self.navigationController popViewControllerAnimated:YES];
    
    
}
@end
