//
//  BFMapViewController.h
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/11/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BFMapViewController : UIViewController

- (void)putMarkerWithLat:(double)lattitude long:(double)longitute;
- (void)drawLineFromLat:(double)fromLattitude fromLongitude:(double)fromLongitude toLattitude:(double)toLattitude toLongitude:(double)toLongitude;

@end

NS_ASSUME_NONNULL_END
