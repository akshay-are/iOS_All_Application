//
//  FourthViewController.h
//  CoreDataPractice
//
//  Created by Ashlesha on 27/12/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourthViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *idtextemp;
@property (weak, nonatomic) IBOutlet UITextField *fnametextemp;
@property (weak, nonatomic) IBOutlet UITextField *lnametextemp;

@property (weak, nonatomic) IBOutlet UIPickerView *pick1;
@property(nonatomic,retain)NSMutableArray *pickerarray;
@property(nonatomic,retain)NSString *pickstring;
- (IBAction)empsubmit:(id)sender;

@end
