//
//  ViewController.m
//  Map_GPS_Demo
//
//  Created by Student-004 on 18/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _manager=[[CLLocationManager alloc]init];
    _manager.desiredAccuracy=kCLLocationAccuracyBest;
    _manager.delegate=self;
    [_manager startUpdatingLocation];
    
    _geocoder=[[CLGeocoder alloc]init];
    
    NSString *address=@"Kothrud , Pune , Maharashtra , India ,411038";
    
    [_geocoder geocodeAddressString:address completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        CLPlacemark *mylatlong=[placemarks objectAtIndex:0];
        CLLocation *location=mylatlong.location;
        NSLog(@"%f     %f",location.coordinate.latitude,location.coordinate.longitude);
    }];
    
    
    
}


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
 
    CLLocation *mycurrentlocation=[locations lastObject];
    [_geocoder reverseGeocodeLocation:mycurrentlocation completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        
        CLPlacemark *mylatlong=[placemarks objectAtIndex:0];
        MKPointAnnotation *point1=[[MKPointAnnotation alloc]init];
        point1.title=mylatlong.locality;
        point1.subtitle=mylatlong.postalCode;
        
        CLLocationCoordinate2D loc;
        loc.latitude=mycurrentlocation.coordinate.latitude;
        loc.longitude=mycurrentlocation.coordinate.longitude;
        point1.coordinate=loc;
        [self.mapview addAnnotation:point1];

    }];
    

}


-(void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray<MKAnnotationView *> *)views
{
    
    MKCoordinateRegion region;
    region=MKCoordinateRegionMakeWithDistance(_manager.location.coordinate, 1000, 1000);
    [mapView setRegion:region animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
