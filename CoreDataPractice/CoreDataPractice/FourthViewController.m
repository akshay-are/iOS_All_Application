//
//  FourthViewController.m
//  CoreDataPractice
//
//  Created by Ashlesha on 27/12/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import "FourthViewController.h"
#import "AppDelegate.h"
#import "Employee+CoreDataProperties.h"
#import "Employee.h"
#import "Department+CoreDataProperties.h"
#import "Department.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _pick1.delegate=self;
    _pick1.dataSource=self;
    _pickerarray=[[NSMutableArray alloc]init];
    
    
}

-(void)viewWillAppear:(BOOL)animated
{
    
    UIApplication *myapplication=[UIApplication sharedApplication];
    AppDelegate *myappdel=(AppDelegate *)myapplication.delegate;
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    
    NSFetchRequest *request=[NSFetchRequest fetchRequestWithEntityName:@"Department"];
    NSArray *result=[context executeFetchRequest:request error:nil ];
    
    for(Department *tempdetail in result)
    {
        
        [_pickerarray addObject:tempdetail.deptname];
    }
    
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerarray.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_pickerarray objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    _pickstring=[_pickerarray objectAtIndex:row];
    
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

- (IBAction)empsubmit:(id)sender {
    
    UIApplication *myapplication=[UIApplication sharedApplication];
    AppDelegate *myappdel=(AppDelegate *)myapplication.delegate;
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    
    Employee *e1=[NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:context];
    int a=[_idtextemp.text intValue];
    e1.empid=[NSNumber numberWithInt:a];
    e1.empfname=_fnametextemp.text;
    e1.emplname=_lnametextemp.text;
    e1.empdept=_pickstring;
    //[e1 empworkin=e1;
    NSLog(@"ID:-%@  FNAME:-%@  LNAME:-%@  DEPARTMENT:-%@ ",e1.empid,e1.empfname,e1.emplname,e1.empdept);
    [context save:nil];
    NSLog(@"Record Save");
    [self.navigationController popViewControllerAnimated:YES];
    
 
    
}
@end
