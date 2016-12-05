//
//  T_ViewController.m
//  EmployeeDetailsqldb
//
//  Created by Student-004 on 12/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "T_ViewController.h"
#import "ViewController.h"
#import <sqlite3.h>

@interface T_ViewController ()

@end

@implementation T_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



    
    
    


- (IBAction)btnf:(id)sender {
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Mydb.sqlite",[dir lastObject]];
    
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
                
                int temp4=sqlite3_column_int(mystmt ,3);
                
                _nametext.text=temp2;
                _addresstext.text=temp3;
                _phonetext.text=[NSString stringWithFormat:@"%d",temp4];
                
            }
        }
        else
        {
            NSLog(@"fail to execute query");
        }
        
    }
    
    sqlite3_close(db);

}


- (IBAction)btnd:(id)sender {
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Mydb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        
        NSString *query=[NSString stringWithFormat:@"delete from employee where empid=\"%@\"",_idtext.text];
        
        
        if(sqlite3_exec(db,[query UTF8String],NULL,NULL,NULL)==SQLITE_OK)
        {
            NSLog(@"deleted");
            
            _idtext.text=@"";
            _nametext.text=@"";
            _addresstext.text=@"";
            _phonetext.text=@"";
        }
        else
        {
            NSLog(@"fail to delete");
        }
        
        
    }
    
    sqlite3_close(db);

    
}

- (IBAction)btnu:(id)sender {
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Mydb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        NSString *query=[NSString stringWithFormat:@"update employee set empname=\"%@\",empaddress=\"%@\",empphoneno=\"%@\" where empid=\"%@\"",_nametext.text,_addresstext.text,_phonetext.text,_idtext.text];
        
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
@end
