//
//  ViewController.h
//  Gestures
//
//  Created by Student-004 on 05/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lbl1;
@property (weak, nonatomic) IBOutlet UILabel *lbl2;

@property (weak, nonatomic) IBOutlet UIImageView *imagev;
@property(nonatomic,retain)UISwipeGestureRecognizer *s1,*s2,*s3,*s4;

@end

