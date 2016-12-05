//
//  CalculateViewController.m
//  CalculateApp2
//
//  Created by Student-004 on 23/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "CalculateViewController.h"

@interface CalculateViewController ()

@end

@implementation CalculateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    _arr=[[NSMutableArray alloc]init];
    
    _tf1=[[UITextField alloc]initWithFrame:CGRectMake(20,20,100, 30)];
    _tf1.borderStyle=UITextBorderStyleRoundedRect;
    _tf1.keyboardType=UIKeyboardTypeNumberPad;
    _tf1.returnKeyType=UIReturnKeyDone;
    _tf1.delegate=self;
    [self.view addSubview:_tf1];
    
    
    _tf2=[[UITextField alloc]initWithFrame:CGRectMake(140,20,100, 30)];
    _tf2.borderStyle=UITextBorderStyleRoundedRect;
    _tf2.keyboardType=UIKeyboardTypeNumberPad;
    _tf2.returnKeyType=UIReturnKeyDone;
    _tf2.delegate=self;
    [self.view addSubview:_tf2];
    
    
    _btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn1.frame=CGRectMake(290, 20, 100, 30);
    [_btn1 setTitle:@"CALCULATE" forState:UIControlStateNormal];
    [_btn1 setTitle:@"SELECTED" forState:UIControlStateHighlighted];
    [_btn1 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn1];
    
    _table1=[[UITableView alloc]initWithFrame:CGRectMake(20, 80, 300, 300) style:UITableViewStyleGrouped];
    _table1.delegate=self;
    _table1.dataSource=self;
    [self.view addSubview:_table1];
    

    
    [self.table1 registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
       [_arr removeAllObjects];
    
    

    
}



-(void)btnclick:(UIButton *)sender
{
    
    
        temp1=[_tf1.text intValue];
        temp2=[_tf2.text intValue];
    
    for(i=1;i<=temp2;i++)
    {
        NSString *s1=[NSString stringWithFormat:@"%d  *  %d=%d",temp1,i,temp1*i];
        [_arr addObject:s1];
       
    }
   [self.table1 reloadData];
    
 
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return _arr.count;
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
     UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    
     cell.textLabel.text=[_arr objectAtIndex:indexPath.row];
    
//    for(i=1;i<=temp2;i++)
//    {
//        NSString *s1;
//        s1=[NSString stringWithFormat:@"%d",i];
//        cell.textLabel.text=s1;
//       
//        //NSLog(@"%d hii",temp2);
//    }
    return cell;
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
