//
//  ViewController.h
//  Map_GPS_Demo
//
//  Created by Student-004 on 18/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate,MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapview;

@property(nonatomic,retain)CLLocationManager *manager;
@property(nonatomic,retain)CLGeocoder *geocoder;





@end

