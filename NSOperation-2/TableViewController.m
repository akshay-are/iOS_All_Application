//
//  TableViewController.m
//  NSOperation-2
//
//  Created by Student-004 on 23/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _queue=[[NSOperationQueue alloc]init];
    _arr=[[NSMutableArray alloc]init];
    
    NSString *str=@"https://api.github.com/repositories/19438/commits";
   
    
    NSBlockOperation *op1=[NSBlockOperation blockOperationWithBlock:^{
        
        NSURL *url=[NSURL URLWithString:str];
        NSData *data=[NSData dataWithContentsOfURL:url];
        
        NSString *surl=[[NSString alloc]init];
        if(data==nil) {
            NSLog(@"DATA IS EMPTY");
        }
        else
        {
        
        NSArray *sub_dic=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
        for(NSDictionary *temp in sub_dic)
        {
            
            NSDictionary *committer=[temp objectForKey:@"committer"];
            surl=[committer objectForKey:@"subscriptions_url"];
            
            
        }
        
        }
        [[NSOperationQueue mainQueue]addOperationWithBlock:^{
            
            [_arr addObject:surl];
        }];
        
    }];
    
    [_queue addOperation:op1];
   
    
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    
    
    
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return _arr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSString *str2=[_arr objectAtIndex:indexPath.row];
    
    NSBlockOperation *op2=[NSBlockOperation blockOperationWithBlock:^{
        
   
    NSURL *url2=[NSURL URLWithString:str2];
    NSData *data2=[NSData dataWithContentsOfURL:url2];
    
   NSArray *arr2=[NSJSONSerialization JSONObjectWithData:data2 options:NSJSONReadingAllowFragments error:nil];
    
    NSDictionary *iddic=[arr2 objectAtIndex:0];
   //
        
        [[NSOperationQueue mainQueue]addOperationWithBlock:^{
            
            cell.textLabel.text=[iddic objectForKey:@"id"];
        }];
    }];
    
    [_queue addOperation:op2];
    
    [self.tableView reloadData];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
