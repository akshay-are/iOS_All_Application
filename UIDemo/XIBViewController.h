//
//  XIBViewController.h
//  UIDemo
//
//  Created by Student-004 on 26/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XIBViewController : UIViewController



@property (strong, nonatomic) IBOutlet UILabel *lbl1;

@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UITextField *tf1;

@property (strong, nonatomic) IBOutlet UIPickerView *picker1;
@property (strong, nonatomic) IBOutlet UITableView *table1;



- (IBAction)btnclick:(id)sender;



@end
