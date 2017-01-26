//
//  ViewController.m
//  Employee_SQLITE
//
//  Created by Ashlesha on 19/01/17.
//  Copyright © 2017 Akshay. All rights reserved.
//

#import "ViewController.h"
#import <sqlite3.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Employeedb.sqlite",[dir lastObject]];
    NSLog(@"%@",dbpath);
    
    NSFileManager *f=[[NSFileManager alloc]init];
    if([f fileExistsAtPath:dbpath])
    {
        NSLog(@"database alreay present");
        return;
    }
    
    sqlite3 *db;
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        
        const char * query=" create table employee (empid integer , empname varchar(20),empdept varchar(20))";
        
        if(sqlite3_exec(db,query,NULL,NULL,NULL)==SQLITE_OK)
        {
            NSLog(@"table created");
        }
        else
        {
            NSLog(@"fail to create table");
        }
        
    }
    else
    {
        NSLog(@"fail to open database");
    }
    
    sqlite3_close(db);
    
    

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)insert:(id)sender {
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Employeedb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        
        NSString *insertquery=[NSString stringWithFormat:@"insert into employee values(\"%@\",\"%@\",\"%@\")",_idtext.text,_nametext.text,_depttext.text];
        
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
    
 
    
}

- (IBAction)search:(id)sender {
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Employeedb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    
    sqlite3_stmt *mystmt;
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        
        NSString *query=[NSString stringWithFormat:@"select * from employee where empid=\"%@\"",_idtext.text];
        
        if(sqlite3_prepare(db, [query UTF8String], -1, &mystmt, NULL)==SQLITE_OK)
        {
            while (sqlite3_step(mystmt)==SQLITE_ROW) {
                
                
                NSString *temp2=[ NSString stringWithFormat:@"%s",sqlite3_column_text(mystmt,1)];
                
                NSString *temp3=[ NSString stringWithFormat:@"%s",sqlite3_column_text(mystmt,2)];
                
            //    int temp4=sqlite3_column_int(mystmt ,3);
                
                _nametext.text=temp2;
                _depttext.text=temp3;
                //_phonetext.text=[NSString stringWithFormat:@"%d",temp4];
                
            }
        }
        else
        {
            NSLog(@"fail to execute query");
        }
        
    }
    
    sqlite3_close(db);
    
   
    
}

- (IBAction)update:(id)sender {
    
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Employeedb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        NSString *query=[NSString stringWithFormat:@"update employee set empname=\"%@\",empdept=\"%@\" where empid=\"%@\"",_nametext.text,_depttext.text,_idtext.text];
        
        if(sqlite3_exec(db,[query UTF8String],NULL,NULL,NULL)==SQLITE_OK)
        {
            NSLog(@"updated");
        }
        else
        {
            NSLog(@"fail to update");
        }
    }
    
    sqlite3_close(db);
    

}

- (IBAction)deletebtn:(id)sender {
    
    
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Employeedb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        
        NSString *query=[NSString stringWithFormat:@"delete from employee where empid=\"%@\"",_idtext.text];
        
        
        if(sqlite3_exec(db,[query UTF8String],NULL,NULL,NULL)==SQLITE_OK)
        {
            NSLog(@"deleted");
            
            _idtext.text=@"";
            _nametext.text=@"";
            _depttext.text=@"";
           // _addresstext.text=@"";
            //_phonetext.text=@"";
        }
        else
        {
            NSLog(@"fail to delete");
        }
        
        
    }
    
    sqlite3_close(db);
    

}

@end
