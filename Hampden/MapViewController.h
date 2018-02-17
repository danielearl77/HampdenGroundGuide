//
//  MapViewController.h
//  Hampden
//
//  Created by MacBookPro on 09/01/2017.
//  Copyright © 2017 Daniel Earl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController
{
    IBOutlet MKMapView *map;
}
@property (retain, nonatomic) MKMapView *map;
@property (strong, nonatomic) CLLocationManager *locationManager;

@end

