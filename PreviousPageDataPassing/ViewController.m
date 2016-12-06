//
//  ViewController.m
//  PreviousPageDataPassing
//
//  Created by Student-004 on 14/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)data:(NSString *)send
{
    [self.lbl1 setText:send];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier]isEqualToString:@"fvc"])
    {
        SecondViewController *i=[segue destinationViewController];
        
        i.delegate=self;
    }
}


@end
