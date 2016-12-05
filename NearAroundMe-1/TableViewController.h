//
//  TableViewController.h
//  NearAroundMe-1
//
//  Created by Student-004 on 26/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface TableViewController : UITableViewController<CLLocationManagerDelegate>

@property(nonatomic,retain)NSMutableArray *addressarray;
@property(nonatomic,retain)NSMutableArray *addarray2;
@property(nonatomic,retain)CLLocationManager *locationmanager;
@property(nonatomic,retain)CLGeocoder *geocoder;
@property(nonatomic,retain)NSString *tempstring;


@end
