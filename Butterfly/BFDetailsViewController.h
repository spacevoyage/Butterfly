//
//  ViewController.h
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/11/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BFMapViewController.h"

@interface BFDetailsViewController : UIViewController

@property (nonatomic, weak) BFMapViewController *mapVC;
- (instancetype)initWithQuest:(NSArray *)aQuest step:(NSInteger)aStep;

@end

