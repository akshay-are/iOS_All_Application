//
//  SecondViewController.m
//  PassDataTable
//
//  Created by Student-004 on 29/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "SecondViewController.h"
#import "MyTableTableViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnclick:(id)sender {
    
   [self.navigationController popViewControllerAnimated:YES];
    
    [_temparray addObject:_tf1.text];
        
    
    
    
}
@end
