//
//  LoginViewController.h
//  UIDemo
//
//  Created by Student-004 on 07/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>
@property (nonatomic,retain)UILabel *lbl1,*lbl2;
@property (nonatomic,retain)UITextField *tf1,*tf2;
@property(nonatomic,retain)UIButton *btn1,*btn2;
@property(nonatomic,retain)UISwitch *swt1;
@property(nonatomic,retain)UISlider *slider1,*slider2,*slider3,*slider4;
@property(nonatomic,retain)UIView *v1;
@property(nonatomic,retain)UISegmentedControl *segment;
@property(nonatomic,retain)UIImageView *container;
@property(nonatomic,retain)UIImage *actualimage;


@end
