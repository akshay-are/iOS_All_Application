//
//  ViewController.h
//  Employee_SQLITE
//
//  Created by Ashlesha on 19/01/17.
//  Copyright © 2017 Akshay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *idtext;

@property (weak, nonatomic) IBOutlet UITextField *nametext;

@property (weak, nonatomic) IBOutlet UITextField *depttext;

- (IBAction)insert:(id)sender;
- (IBAction)search:(id)sender;
- (IBAction)update:(id)sender;
- (IBAction)deletebtn:(id)sender;



@end

