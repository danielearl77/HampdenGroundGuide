//
//  MapViewController.m
//  Hampden
//
//  Created by MacBookPro on 09/01/2017.
//  Copyright © 2017 Daniel Earl. All rights reserved.
//

#import "MapViewController.h"

#define StadeLat 55.8252342
#define StadeLong -4.2531995


@interface MapViewController ()

@end

@implementation MapViewController
@synthesize map;

- (void)viewDidLoad {
    
    self.locationManager = [[CLLocationManager alloc] init];
    [self.locationManager requestWhenInUseAuthorization];
    
    CLLocation *DisplayGroundMap = [[CLLocation alloc] initWithLatitude:StadeLat longitude:StadeLong];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(DisplayGroundMap.coordinate, 860, 860);
    [map setRegion:region animated:YES];

    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
