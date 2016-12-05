//
//  ViewController.m
//  CategoryDemo
//
//  Created by Student-004 on 15/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableString+CustomString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableString *str=[[NSMutableString alloc]init];
    [str appendString:@"sdhjkdh34772127te1"];
    [str appendString:@"sjdh346786gdy3ytr6"];
    NSLog(@"%@",str);
    [str removenumber:str];
    [str removecharacter:str];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
