//
//  SecondViewController.h
//  NearAroundMe-1
//
//  Created by Student-004 on 21/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface SecondViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapview;

@property(nonatomic,retain)CLLocationManager *locationmanager;
@property(nonatomic,retain)CLGeocoder *geocoder;





@end
