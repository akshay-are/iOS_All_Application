//
//  FirstViewController.h
//  PassData
//
//  Created by Student-004 on 29/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *tf1;
@property(nonatomic,retain)NSMutableArray *array;

- (IBAction)btnclick:(id)sender;




@end
