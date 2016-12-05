//
//  ThirdViewController.h
//  CoreDaraAssignment
//
//  Created by Student-004 on 18/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *itext;

@property (weak, nonatomic) IBOutlet UITextField *ntext;


@property (weak, nonatomic) IBOutlet UITextField *addtext;


@property (weak, nonatomic) IBOutlet UITextField *mobtext;
- (IBAction)searchbtn:(id)sender;
- (IBAction)deletebtn:(id)sender;
- (IBAction)updatebtn:(id)sender;

@end
