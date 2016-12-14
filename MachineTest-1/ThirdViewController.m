//
//  ThirdViewController.m
//  MachineTest-1
//
//  Created by KUNAL on 16/10/16.
//  Copyright © 2016 AKSHAY. All rights reserved.
//

#import "ThirdViewController.h"
#import "FirstTableViewController.h"
#import <sqlite3.h>

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


- (IBAction)updatebtn:(id)sender {
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Persondb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        NSString *query=[NSString stringWithFormat:@"update person set pdesc=\"%@\",pdate=\"%@\" where pname=\"%@\"",_dtext.text,_dttext.text,_ntext.text];
        
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

- (IBAction)searchbtn:(id)sender {
    
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Persondb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    
    sqlite3_stmt *mystmt;
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        
        NSString *query=[NSString stringWithFormat:@"select * from person where pname=\"%@\"",_ntext.text];
        
        if(sqlite3_prepare(db, [query UTF8String], -1, &mystmt, NULL)==SQLITE_OK)
        {
            while (sqlite3_step(mystmt)==SQLITE_ROW) {
                
                
                NSString *temp2=[ NSString stringWithFormat:@"%s",sqlite3_column_text(mystmt,1)];
                
                NSString *temp3=[ NSString stringWithFormat:@"%s",sqlite3_column_text(mystmt,2)];
                
               
                
                _dtext.text=temp2;
                _dttext.text=temp3;
              
                
            }
        }
        else
        {
            NSLog(@"fail to execute query");
        }
        
    }
    
    sqlite3_close(db);

    
    
    
    
    
}
@end
