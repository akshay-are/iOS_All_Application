//
//  TableViewController.h
//  UIDemoworktable
//
//  Created by Student-004 on 28/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableview1;
@property(nonatomic,retain)UITextField *alerttext;
@property(nonatomic,retain)UIAlertView *alert;
@property(nonatomic,retain)NSString *str;
@property(nonatomic,retain)NSMutableArray *arr;



@end
