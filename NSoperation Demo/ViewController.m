//
//  ViewController.m
//  NSoperation Demo
//
//  Created by Student-004 on 23/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _queue=[[NSOperationQueue alloc]init];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)download:(id)sender {
    
    
    [_indicator startAnimating];
    
    NSBlockOperation *op1=[NSBlockOperation blockOperationWithBlock:^{
        
        
        UIImage *img=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://images2.alphacoders.com/389/38980.png"]]];
        
        [[NSOperationQueue mainQueue]addOperationWithBlock:^{
            
            _imgv.image=img;
            [_indicator stopAnimating];
        }];
        
        
    }];
    
    [_queue addOperation:op1];
    
}
@end
