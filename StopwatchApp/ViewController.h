//
//  ViewController.h
//  StopwatchApp
//
//  Created by Student-004 on 15/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int tick,tick1,tick2;
}

- (IBAction)startbtn:(id)sender;
- (IBAction)stopbtn:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lbl1;
@property (weak, nonatomic) IBOutlet UILabel *lbl2;
@property (weak, nonatomic) IBOutlet UILabel *lbl3;

@property(nonatomic,retain)NSTimer *timer;




@end

