//
//  CalculateViewController.h
//  CalculateApp2
//
//  Created by Student-004 on 23/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculateViewController : UIViewController<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
{
 int temp1,temp2,i;
}
@property(nonatomic,retain)UITextField *tf1,*tf2;
@property(nonatomic,retain)UIButton *btn1;
@property(nonatomic,retain)UITableView *table1;
@property(nonatomic,retain)NSMutableArray *arr;

@end
