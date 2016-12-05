//
//  XIBViewController.m
//  UIDemo
//
//  Created by Student-004 on 26/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "XIBViewController.h"

@interface XIBViewController ()<UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource,UITableViewDelegate,UITableViewDataSource>

@end

@implementation XIBViewController

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





-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"test");
    return YES;
    
    
}

- (IBAction)btnclick:(id)sender {
    
    _lbl1.text=@"Hii..";
    
    _tf1.backgroundColor=[UIColor greenColor];
    
}


-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
   return  1;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
   
}










-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//   cell.textLabel.text=[cityarray objectAtIndex:indexPath.row];
//    cell.textLabel.text=[colourarray objectAtIndex:indexPath.row];
// 
//    return cell;
//}


@end
