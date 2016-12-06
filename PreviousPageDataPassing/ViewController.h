//
//  ViewController.h
//  PreviousPageDataPassing
//
//  Created by Student-004 on 14/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@interface ViewController : UIViewController<DataPass>
@property (weak, nonatomic) IBOutlet UILabel *lbl1;
//@property(nonatomic,retain)UIViewController


@end

