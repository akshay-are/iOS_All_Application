//
//  T_ViewController.h
//  EmployeeDetailsqldb
//
//  Created by Student-004 on 12/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface T_ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *idtext;
@property (weak, nonatomic) IBOutlet UITextField *nametext;
@property (weak, nonatomic) IBOutlet UITextField *addresstext;
@property (weak, nonatomic) IBOutlet UITextField *phonetext;


- (IBAction)btnf:(id)sender;
- (IBAction)btnd:(id)sender;
- (IBAction)btnu:(id)sender;

@end
