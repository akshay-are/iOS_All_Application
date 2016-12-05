//
//  SecondViewController.h
//  CoreDaraAssignment
//
//  Created by Student-004 on 18/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *idtext;

@property (weak, nonatomic) IBOutlet UITextField *nametext;

@property (weak, nonatomic) IBOutlet UITextField *addresstext;

@property (weak, nonatomic) IBOutlet UITextField *mobiletext;
- (IBAction)savebtn:(id)sender;


@end
