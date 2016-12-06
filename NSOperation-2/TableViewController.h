//
//  TableViewController.h
//  NSOperation-2
//
//  Created by Student-004 on 23/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

@property(nonatomic,retain)NSOperationQueue *queue;
@property(nonatomic,retain)NSMutableArray *arr;

@end
