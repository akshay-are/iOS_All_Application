//
//  TableViewController.m
//  UIDemo
//
//  Created by Student-004 on 20/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "TableViewController.h"
#import "MyTableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _table=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    _table.delegate=self;
    _table.dataSource=self;
    [self.view addSubview:_table];
    
    
    
    _cityarray=[[NSMutableArray alloc]initWithObjects:@"Ahmednagar",@"Pune",@"Nasik",@"Mumbai", nil];
    _colourarray=[[NSMutableArray alloc]initWithObjects:@"Red",@"Orange",@"Blue",@"White", nil];
    
    
    
    
    self.navigationItem.title=@"tableview";
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(barbtnclick)];
    self.navigationItem.rightBarButtonItem=rbtn;
    
    
    
    
}



-(void)barbtnclick
{
    MyTableViewController *mt=[[MyTableViewController alloc]init];
    [self.navigationController pushViewController:mt animated:YES];
    
    
}

    
    
    
    


//-(NSInteger)NumberOfSectionsInTableView:(UITableView *)tableView
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section==0)
       // return 6;
        return _cityarray.count;
    
    else
        return _colourarray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
//    cell.textLabel.text=@"Sample";
//    cell.textLabel.text=
//    cell.imageView.image=[UIImage imageNamed:@"31"];
//    cell.detailTextLabel.text=@"Twitter";
    
    if(indexPath.section==0)
    {
        cell.textLabel.text=[_cityarray objectAtIndex:indexPath.row];
        cell.imageView.image=[UIImage imageNamed:@"11"];
        cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
    }
        else
        {
        cell.textLabel.text=[_colourarray objectAtIndex:indexPath.row];
            cell.imageView.image=[UIImage imageNamed:@"4"];
            UISwitch *s=[[UISwitch alloc]init];
            cell.accessoryView=s;
        }
    return  cell;
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section==0)
    {
        NSString *str1=[_cityarray objectAtIndex:indexPath.row];
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:str1 message:@"Selected" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
        
        [alert show];
    }
    else
    {
        NSString *str1=[_colourarray objectAtIndex:indexPath.row];
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:str1 message:@"Selected" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
        [alert show];
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}



-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section==0)
        return  @"This is CityArray";
    else
        return @"THis is ColourArray";
    
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (section==0)
        return @"This is end of CityArray ";
    else
        return @"This is end of ColourArray";
    
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section
{
    return 60;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForFooterInSection:(NSInteger)section
{
    return 30;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIImageView *imgv=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4"]];
    return imgv;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UISegmentedControl *seg=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"A",@"B",@"C", nil]];
    return seg;
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
