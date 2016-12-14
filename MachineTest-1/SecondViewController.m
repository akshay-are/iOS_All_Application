//
//  SecondViewController.m
//  MachineTest-1
//
//  Created by KUNAL on 16/10/16.
//  Copyright © 2016 AKSHAY. All rights reserved.
//

#import "SecondViewController.h"
#import <sqlite3.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_datepicker addTarget:self action:@selector(dateselect) forControlEvents:UIControlEventValueChanged];
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




-(void)dateselect
{
    
    NSDateFormatter *dateformat=[[NSDateFormatter alloc]init];
    [dateformat setDateFormat:@"dd-MM-YYYY"];
    NSString *dat=[dateformat stringFromDate:_datepicker.date];
    _datetext.text=dat;

}

//- (IBAction)datepick:(UIDatePicker *)sender
//{
////    
////    NSDateFormatter *dateformat=[[NSDateFormatter alloc]init];
////   
////    self.datetext.inputView=self.datepicker;
////    
////    self.datetext.text=[dateformat stringFromDate:_datepicker.date];
////   
//    
//}

- (IBAction)savebtn:(id)sender {
    
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Persondb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        
        NSString *insertquery=[NSString stringWithFormat:@"insert into person values(\"%@\",\"%@\",\"%@\")",_nametext.text,_destext.text,_datetext.text];
        
        NSLog(@"%@",insertquery);
        
        if(sqlite3_exec(db,[insertquery UTF8String],NULL,NULL,NULL)==SQLITE_OK)
        {
            NSLog(@"record inserted");
        }
        else
        {
            NSLog(@"fail to insert record");
        }
        
    }
    
    
    sqlite3_close(db);
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
    
    
}
@end
