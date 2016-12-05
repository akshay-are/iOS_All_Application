//
//  TableHWorkViewController.m
//  UIDemo
//
//  Created by Student-004 on 21/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "TableHWorkViewController.h"

@interface TableHWorkViewController ()

@end

@implementation TableHWorkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _table=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    _table.delegate=self;
    _table.dataSource=self;
    [self.view addSubview:_table];
    
    
    
    _btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn1.frame=CGRectMake(100, 450, 100, 50);
    [_btn1 setTitle:@"OK" forState:UIControlStateNormal];
    [_btn1 setTitle:@"SELECTED" forState:UIControlStateHighlighted];
    [_btn1 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn1];

    







}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}

-(void)btnclick:(UIButton *)sender
{
    
    
    
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

@end
