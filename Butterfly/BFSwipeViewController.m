//
//  BFSwipeViewController.m
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/11/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import "BFSwipeViewController.h"
#import "BFSelectionViewController.h"
#import "SwipeView.h"
#include <stdlib.h>

@interface BFSwipeViewController ()

@end

@implementation BFSwipeViewController

//- (void)pickQuests
//{
//	BFSelectionViewController *selectionVC = (BFSelectionViewController *)self.parentViewController;
//	self.quests = selectionVC.tableData;
//	self.pickedQuests = [NSMutableArray new];
//	int remaining = 4;
//
//	if (self.quests.count >= remaining) {
//		while (remaining > 0) {
//			id quest = self.quests[arc4random_uniform(self.quests.count)];
//
//			if (![self.pickedQuests containsObject:quest]) {
//				[self.pickedQuests addObject:quest];
//				remaining--;
//			}
//		}
//	}
//}

- (void)viewDidLoad {
    [super viewDidLoad];
	
//	[self pickQuests];
	SwipeView *view = (SwipeView *)self.view;
	view.alignment = SwipeViewAlignmentCenter;
	
	
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfItemsInSwipeView:(SwipeView *)swipeView
{
	//generate 100 item views
	//normally we'd use a backing array
	//as shown in the basic iOS example
	//but for this example we haven't bothered
	return 4;
}

- (UIView *)swipeView:(SwipeView *)swipeView viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
	if (!view)
	{
//		BFItemViewController *itemVC = [[BFItemViewController alloc] initWithPictureName:self.pickedQuests[index][@"picture_name"] title:self.pickedQuests[index][@"title"] description:self.pickedQuests[index][@"description"]];
//		return itemVC.view;
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
