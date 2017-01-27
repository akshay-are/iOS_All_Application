//
//  ViewController.m
//  CoreData_Practice2
//
//  Created by Ashlesha on 19/01/17.
//  Copyright © 2017 Akshay. All rights reserved.
//

#import "ViewController.h"
#import "Employee.h"
#import "Employee+CoreDataProperties.h"
#import "AppDelegate.h"

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

- (IBAction)submit:(id)sender {
    
    
    UIApplication *myapplication=[UIApplication sharedApplication];
    AppDelegate *myappdel=(AppDelegate *)myapplication.delegate;
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    
    Employee *e1=[NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:context];
    e1.empid=[NSNumber numberWithInt:(int)_idtext.text];
    e1.empname=_nametext.text;
    e1.empdepartment=_departmenttext.text;
    
    NSLog(@" ID:- %@   NAME:-%@  DEPARTMENT:- %@",e1.empid,e1.empname,e1.empdepartment);
    [context save:nil];
    NSLog(@"Record Save");
    [self.navigationController popViewControllerAnimated:YES];

}
@end
