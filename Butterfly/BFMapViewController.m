//
//  BFMapViewController.m
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/11/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import "BFMapViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface BFMapViewController ()

@end

@implementation BFMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];

	// Create a GMSCameraPosition that tells the map to display the
	// coordinate -33.86,151.20 at zoom level 6.
	GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:49.8401046
															longitude:24.0030348
																 zoom:15];
	GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
	mapView.myLocationEnabled = YES;
	self.view = mapView;
	
	// Creates a marker in the center of the map.
	GMSMarker *marker0 = [[GMSMarker alloc] init];
	marker0.position = CLLocationCoordinate2DMake(49.8416263,24.0017421);
	marker0.title = @"Sydney";
	marker0.snippet = @"Australia";
	marker0.map = mapView;
	
	GMSMarker *marker1 = [[GMSMarker alloc] init];
	marker1.position = CLLocationCoordinate2DMake(49.8384088,24.0017974);
	marker1.title = @"Sydney";
	marker1.snippet = @"Australia";
	marker1.map = mapView;
	
	GMSMarker *marker2 = [[GMSMarker alloc] init];
	marker2.position = CLLocationCoordinate2DMake(49.8382205,24.0054061);
	marker2.title = @"Sydney";
	marker2.snippet = @"Australia";
	marker2.map = mapView;
	
	GMSMarker *marker3 = [[GMSMarker alloc] init];
	marker3.position = CLLocationCoordinate2DMake(49.8446118,24.0068768);
	marker3.title = @"Sydney";
	marker3.snippet = @"Australia";
	marker3.map = mapView;
	
	GMSMarker *marker4 = [[GMSMarker alloc] init];
	marker4.position = CLLocationCoordinate2DMake(49.8418097,24.0137737);
	marker4.title = @"Sydney";
	marker4.snippet = @"Australia";
	marker4.map = mapView;
	
	CLLocationCoordinate2D circleCenter = CLLocationCoordinate2DMake(49.842117, 24.004359);
	GMSCircle *circ = [GMSCircle circleWithPosition:circleCenter
											 radius:1000];
	circ.strokeColor = [UIColor colorWithRed:245 green:166 blue:35 alpha:1];
	circ.strokeWidth = 5;
	circ.map = mapView;
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
