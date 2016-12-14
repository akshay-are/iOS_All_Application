//
//  SecondViewController.h
//  MachineTest-1
//
//  Created by KUNAL on 16/10/16.
//  Copyright © 2016 AKSHAY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nametext;


@property (weak, nonatomic) IBOutlet UITextField *destext;


@property (weak, nonatomic) IBOutlet UITextField *datetext;

@property (weak, nonatomic) IBOutlet UIDatePicker *datepicker;



//- (IBAction)datepick:(id)sender;

- (IBAction)savebtn:(id)sender;


@end
