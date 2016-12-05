//
//  TableViewController.m
//  UIDemoworktable
//
//  Created by Student-004 on 28/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _arr=[[NSMutableArray alloc]init];
    
    
    
    
    
    self.navigationController.title=@"Table";
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(barbtnclick)];
    self.navigationItem.rightBarButtonItem=rbtn;
    
    
    
    
   // [self.tableView registerNib:[UINib nibWithNibName:@"TableViewController" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"cell"];
    
    
    
}



-(void)barbtnclick
{
//    PickerViewController *p=[[PickerViewController alloc]init];
//    [self.navigationController pushViewController:p animated:YES];
    
    // [self.tableview1 reloadData];

    _alert=[[UIAlertView alloc]initWithTitle:@"Button clicked " message:@"Enter Text" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok",nil];
    
   // [self.navigationController pushViewController:alert animated:YES];
   
    
    
    _alert.alertViewStyle=UIAlertViewStylePlainTextInput;
  //  [_alert textFieldAtIndex:0].delegate=self;
    
    //UITextField *alerttext=[[UITextField alloc]init];
//    _alerttext.keyboardType=UIKeyboardTypeAlphabet;
//    _alerttext.placeholder=@"Enetr Text Here";
//    _alerttext.delegate=self;
    //alerttext.text=_tf1.text;
    
    
    
    
    
    
    
    
    
    //    _tf1.text=((UITextField *)[alert.textFields objectAtIndex:0]).text;
        //[self.view addSubview:alert];
    
    
    // [tf2 show];
    [_alert show];
    
 //
    
    
    

    
    
    
    
    
    
    

//  UIAlertAction *ok=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//      
//      [self.tableview1 reloadData];
//      
//  }];
    
    
    
  //  [_alert addaction:ok];
  
    
    

    
    
   }



-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex==1)
    {
        _str=[_alert textFieldAtIndex:0].text;
  //[_arr addObject:_str atIndex:0];
        [_arr addObject:_str];
    [self.tableview1 reloadData];
    }
    
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





- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
//    
    
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
//    NSString *temp;
//    temp=_alerttext.text;
    
    
    cell.textLabel.text=[_arr objectAtIndex:indexPath.row];
    // Configure the cell...
    
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
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
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
