//
//  TableViewCell.m
//  MachineTest-1
//
//  Created by KUNAL on 16/10/16.
//  Copyright © 2016 AKSHAY. All rights reserved.
//

#import "TableViewCell.h"
#import "FirstTableViewController.h"
#import <sqlite3.h>

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)deletedtn:(id)sender {
    
    
    
    
    NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dbpath=[NSString stringWithFormat:@"%@/Persondb.sqlite",[dir lastObject]];
    
    sqlite3 *db;
    
    
    if( sqlite3_open([dbpath UTF8String], &db)==SQLITE_OK)
    {
        
        NSString *query=[NSString stringWithFormat:@"delete from person where pname=\"%@\"",_lbl1.text];
        
        
        if(sqlite3_exec(db,[query UTF8String],NULL,NULL,NULL)==SQLITE_OK)
        {
            NSLog(@"deleted");
            FirstTableViewController *ftvc= [[FirstTableViewController alloc]init];
            [ftvc.tableView reloadData];
            
           
        }
        else
        {
            NSLog(@"fail to delete");
        }
        
        
    }
    
    sqlite3_close(db);
    
    
    
    
}
@end
