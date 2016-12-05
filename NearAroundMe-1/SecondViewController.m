//
//  SecondViewController.m
//  NearAroundMe-1
//
//  Created by Student-004 on 21/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "SecondViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>



@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _locationmanager=[[CLLocationManager alloc]init];
    [_locationmanager setDistanceFilter:kCLDistanceFilterNone];
    [_locationmanager setDesiredAccuracy:kCLLocationAccuracyBest];
    _locationmanager.delegate=self;
    [_locationmanager startUpdatingLocation];
    _mapview.delegate=self;
    [self.mapview setShowsUserLocation:YES];
    
    NSString *address=@"Kothrud , Pune , Maharashtra , India ,411038";
    
    [_geocoder geocodeAddressString:address completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        CLPlacemark *mylatlong=[placemarks objectAtIndex:0];
        CLLocation *location=mylatlong.location;
        NSLog(@"%f     %f",location.coordinate.latitude,location.coordinate.longitude);
    }];

    
    
     NSURL * url = [NSURL URLWithString:[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/search/json?location=%f,%f&radius=1000&types=%s&sensor=true&key=AIzaSyB7C6preVHRx7PUbj0k0lkPluQdJF0CRww",_locationmanager.location.coordinate.latitude,_locationmanager.location.coordinate.longitude,"atm"]];
    
    
//    NSString *str=@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=,location.coordinate.longitude&radius=500&type=restaurant&keyword=cruise&key=AIzaSyD_rHAPgG1ln1zj77_DOIjdGq7ahjiz4zc";
   
//     NSString *str = [NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/search/json?location=%f,%f&radius=%@&types=%@&sensor=true&key=%@",_locationmanager.location.coordinate.latitude,_locationmanager.location.coordinate.longitude, [NSString stringWithFormat:@"500"],@"atm",@"AIzaSyD_rHAPgG1ln1zj77_DOIjdGq7ahjiz4zc" ];
//    
    
//    NSURL *url=[NSURL URLWithString:str];
    
    
    
    
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url];
    
    [request setHTTPMethod:@"GET"];
    [NSURLConnection connectionWithRequest:request delegate:self];

    
    NSLog(@"%f   %f",_locationmanager.location.coordinate.latitude,_locationmanager.location.coordinate.longitude);
    
    
    
}

-(void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray<MKAnnotationView *> *)views
{
    
    MKCoordinateRegion region;
    region=MKCoordinateRegionMakeWithDistance(_locationmanager.location.coordinate, 1000, 1000);
    [mapView setRegion:region animated:YES];
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
