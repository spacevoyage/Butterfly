//
//  BFSwipeViewController.m
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/11/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import "BFSwipeViewController.h"
#import "SwipeView.h"

@interface BFSwipeViewController ()

@end

@implementation BFSwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	SwipeView *view = self.view;
	view.alignment = SwipeViewAlignmentCenter;
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfItemsInSwipeView:(SwipeView *)swipeView
{
	//generate 100 item views
	//normally we'd use a backing array
	//as shown in the basic iOS example
	//but for this example we haven't bothered
	return 3;
}

- (UIView *)swipeView:(SwipeView *)swipeView viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
	if (!view)
	{
		view = [[NSBundle mainBundle] loadNibNamed:@"ItemView" owner:self options:nil][0];
	}
	return view;
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
