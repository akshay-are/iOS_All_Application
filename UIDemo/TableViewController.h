//
//  TableViewController.h
//  UIDemo
//
//  Created by Student-004 on 20/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,retain)UITableView *table;
@property(nonatomic,retain)NSMutableArray *cityarray,*colourarray;

@end
