//
//  ThirdViewController.h
//  CoreDataPractice
//
//  Created by Ashlesha on 27/12/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *idtextdept;
@property (weak, nonatomic) IBOutlet UITextField *nametextdept;

- (IBAction)submitdept:(id)sender;


@end
