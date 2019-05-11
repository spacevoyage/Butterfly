//
//  BFMapViewContainerView.m
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/11/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import "BFMapViewContainerView.h"

IB_DESIGNABLE

@implementation BFMapViewContainerView

- (void)drawRect:(CGRect)rect {
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGRect myFrame = self.bounds;
	CGContextSetLineWidth(context, _lineWidth);
	CGRectInset(myFrame, -5, -5);
	[_fillColor set];
	UIRectFrame(myFrame);
}


@end
