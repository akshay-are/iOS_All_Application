//
//  SecondViewController.h
//  PassDataTable
//
//  Created by Student-004 on 29/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *tf1;
- (IBAction)btnclick:(id)sender;

@property(nonatomic,retain)NSMutableArray *temparray;

@end
