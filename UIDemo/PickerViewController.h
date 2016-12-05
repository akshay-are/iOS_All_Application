//
//  PickerViewController.h
//  UIDemo
//
//  Created by Student-004 on 14/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate>
@property(nonatomic,retain)UIPickerView *picker1;
@property(nonatomic,retain)NSMutableArray *cityarray,*colourarray,*imgarray;
@property(nonatomic,retain)UITextField *tf1,*tf2;
@property(nonatomic,retain)UIDatePicker *dtpicker;
@property(nonatomic,retain)UILabel *lbl1;

@end
