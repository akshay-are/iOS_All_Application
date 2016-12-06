//
//  ViewController.h
//  NSoperation Demo
//
//  Created by Student-004 on 23/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgv;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
- (IBAction)download:(id)sender;
@property(nonatomic,retain)NSOperationQueue *queue;



@end

