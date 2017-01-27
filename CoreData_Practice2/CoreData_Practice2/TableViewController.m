//
//  TableViewController.m
//  CoreData_Practice2
//
//  Created by Ashlesha on 19/01/17.
//  Copyright © 2017 Akshay. All rights reserved.
//

#import "TableViewController.h"
#import "AppDelegate.h"
#import "Employee+CoreDataProperties.h"
#import "Employee.h"
#import "TableViewCell.h"
#import "EmpObject.h"
@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _emparray=[[NSMutableArray alloc]init];
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    
    
    
 
    
}

-(void)viewWillAppear:(BOOL)animated
{
    
    [_emparray removeAllObjects];
    UIApplication *myapplication=[UIApplication sharedApplication];
    AppDelegate *myappdel=(AppDelegate *)myapplication.delegate;
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    
    NSFetchRequest *request=[NSFetchRequest fetchRequestWithEntityName:@"Employee"];
    NSArray *result=[context executeFetchRequest:request error:nil ];
    
    for(Employee *tempdetail in result)
    {
        EmpObject *emp=[[EmpObject alloc]init];
        
        emp.eid=tempdetail.empid;
        emp.name=tempdetail.empname;
        emp.department=tempdetail.empdepartment;
        
        [_emparray addObject:emp];
    
    }
    
    [self.tableView reloadData];

    
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
    return _emparray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"forIndexPath:indexPath];
    
    EmpObject *temp=[_emparray objectAtIndex:indexPath.row];
    cell.lbl1.text=temp.eid.description;
    cell.lbl2.text=temp.name;
    cell.lbl3.text=temp.department;
    
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

- (IBAction)sortbtn:(id)sender {
    
    NSSortDescriptor *sorter=[NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSArray *sortedarray=[_emparray sortedArrayUsingDescriptors:@[sorter]];
    
    _emparray=[[NSMutableArray alloc]initWithArray:sortedarray];
    
    [self.tableView reloadData];
    
    
    
}
@end
