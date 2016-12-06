//
//  SecondViewController.h
//  PreviousPageDataPassing
//
//  Created by Student-004 on 14/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol DataPass <NSObject>

-(void)data:(NSString *)send;

@end

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tf1;
@property(nonatomic,retain)id<DataPass>delegate;
- (IBAction)btn1:(id)sender;

@end
