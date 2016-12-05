//
//  TableHWorkViewController.h
//  UIDemo
//
//  Created by Student-004 on 21/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableHWorkViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,retain)UITableView *table;
@property(nonatomic,retain)UIButton *btn1;

@end
