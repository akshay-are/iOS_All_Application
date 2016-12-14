//
//  ThirdViewController.h
//  MachineTest-1
//
//  Created by KUNAL on 16/10/16.
//  Copyright © 2016 AKSHAY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *ntext;


@property (weak, nonatomic) IBOutlet UITextField *dtext;


@property (weak, nonatomic) IBOutlet UITextField *dttext;

@property(nonatomic,retain)NSString *temp1,*temp2,*temp3;

- (IBAction)updatebtn:(id)sender;
- (IBAction)searchbtn:(id)sender;

@end
