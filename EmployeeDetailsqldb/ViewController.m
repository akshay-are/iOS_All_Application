//
//  ViewController.m
//  EmployeeDetailsqldb
//
//  Created by Student-004 on 12/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import <sqlite3.h>

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

- (IBAction)addbtn:(id)sender {
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Mydb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        
        NSString *insertquery=[NSString stringWithFormat:@"insert into employee values(\"%@\",\"%@\",\"%@\",\"%@\")",_tf1.text,_tf2.text,_tf3.text,_tf4.text];
        
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
