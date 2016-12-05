//
//  TableViewController.m
//  NearAroundMe-1
//
//  Created by Student-004 on 26/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _addarray2=[[NSMutableArray alloc]init];
    _addressarray=[[NSMutableArray alloc]init];
    _locationmanager=[[CLLocationManager alloc]init];
    _locationmanager.desiredAccuracy=kCLLocationAccuracyBest;
    _locationmanager.delegate=self;
    [_locationmanager startUpdatingLocation];
    
    _geocoder=[[CLGeocoder alloc]init];
    NSString *address=@"Kothrud , Pune, Maharashtra, India, 411038";
 [_geocoder geocodeAddressString:address completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
    
    
    CLPlacemark *mylatlong=[placemarks objectAtIndex:0];
    CLLocation *location=mylatlong.location;
    NSLog(@"%f   %f",location.coordinate.latitude,location.coordinate.longitude);
    NSString  *CurrentLongitude=[NSString stringWithFormat: @"%f", location.coordinate.longitude];
    NSString   *CurrentLatitude=[NSString stringWithFormat: @"%f", location.coordinate.latitude];
    NSLog(@"%@",_tempstring);
    
    
    NSString *url =[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=%@,%@&radius=500&type=%@&key=AIzaSyBTPh6eJQdLel0dW3DLDDf-8n450m0CaFk",CurrentLatitude,CurrentLongitude,_tempstring];
    
    NSLog(@"%@",url);
    NSURL *url1=[NSURL URLWithString:url];
    
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url1];
   
    NSURLSessionConfiguration *config=[NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session=[NSURLSession sessionWithConfiguration:config];
    
    NSURLSessionDataTask *task=[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if(data==nil)
        {
            NSLog(@"Data is nil");
        }
        else
        {
        
       NSDictionary *outerdic=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        
     NSArray  *resultarray=[outerdic objectForKey:@"results"];
        for(NSDictionary *temp in resultarray)
        {
            NSString *namestring=[temp objectForKey:@"name"];
            NSString *addstring=[temp objectForKey:@"vicinity"];

            [_addressarray addObject:namestring];
            [_addarray2 addObject:addstring];
            
        }
            
        }
        
        [self.tableView reloadData];
        
    }];
     
     [task resume];
     
    
}];
    
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
    return _addressarray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    cell.textLabel.text=[_addressarray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[_addarray2 objectAtIndex:indexPath.row];
    cell.detailTextLabel.numberOfLines=4;
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
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
