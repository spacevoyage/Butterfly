//
//  BFMapViewController.m
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/11/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import "BFMapViewController.h"
#import "BFSelectionViewController.h"
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
//	GMSMarker *marker0 = [[GMSMarker alloc] init];
//	marker0.position = CLLocationCoordinate2DMake(49.8416263,24.0017421);
//	marker0.title = @"Sydney";
//	marker0.snippet = @"Australia";
//	marker0.map = mapView;
	
	
	CLLocationCoordinate2D circleCenter = CLLocationCoordinate2DMake(49.842117, 24.004359);
	GMSCircle *circ = [GMSCircle circleWithPosition:circleCenter
											 radius:1000];
	circ.strokeColor = [UIColor colorWithRed:245 green:166 blue:35 alpha:1];
	circ.strokeWidth = 3;
	circ.map = mapView;
}

- (void)putMarkerWithLat:(double)lattitude long:(double)longitute
{
	CLLocationCoordinate2D position = CLLocationCoordinate2DMake(lattitude, longitute);
	GMSMarker *marker = [GMSMarker markerWithPosition:position];
	marker.title = @"Position";
	marker.appearAnimation = kGMSMarkerAnimationPop;
	marker.map = (GMSMapView *)self.view;
}

- (void)drawLineFromLat:(double)fromLattitude fromLongitude:(double)fromLongitude toLattitude:(double)toLattitude toLongitude:(double)toLongitude
{
	GMSMutablePath *path = [GMSMutablePath path];
	[path addCoordinate:CLLocationCoordinate2DMake(fromLattitude, fromLongitude)];
	[path addCoordinate:CLLocationCoordinate2DMake(toLattitude, toLongitude)];
	GMSPolyline *polyline = [GMSPolyline polylineWithPath:path];
	polyline.map = (GMSMapView *)self.view;
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
