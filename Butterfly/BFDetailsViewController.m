//
//  ViewController.m
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/11/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import "BFDetailsViewController.h"
#import "MBProgressHUD.h"
@import BubbleTransition;

@interface BFDetailsViewController () <UIViewControllerTransitioningDelegate>
@property (weak, nonatomic) IBOutlet UIButton *checkLocationButton;

@property (strong, nonatomic) BubbleTransition *bubbleTransition;
@property (weak, nonatomic) IBOutlet UITextView *questRiddle;
@property (weak, nonatomic) IBOutlet UILabel *questTitle;
@property NSInteger	currentStep;

@property (nonatomic) NSArray *quest;
@end

@implementation BFDetailsViewController

- (instancetype)initWithQuest:(NSArray *)aQuest step:(NSInteger)aStep
{
	UIStoryboard*  sb = [UIStoryboard storyboardWithName:@"Main"
												  bundle:nil];
	self = [sb instantiateViewControllerWithIdentifier:@"BFDetailsViewController"];
	
	if (self != nil)
	{
		_quest = aQuest;
		_currentStep = aStep;
	}
	
	return self;
}


- (void)viewDidLoad
{
	[super viewDidLoad];
	self.questTitle.text = self.quest[self.currentStep-1][@"title"];
	self.questRiddle.text = self.quest[self.currentStep-1][@"riddle"];
	
	self.bubbleTransition = [[BubbleTransition alloc] init];
}

- (IBAction)onCheckLocation:(UIButton *)sender
{
	MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
	hud.label.text = @"Evaluating...";
	[NSTimer scheduledTimerWithTimeInterval:1 repeats:NO block:^(NSTimer *timer)
	{
		if (self.currentStep > 1)
		{
			[self.mapVC drawLineFromLat:[self.quest[self.currentStep-2][@"locationLat"] doubleValue] fromLongitude:[self.quest[self.currentStep-2][@"locationLong"] doubleValue] toLattitude:[self.quest[self.currentStep-1][@"locationLat"] doubleValue] toLongitude:[self.quest[self.currentStep-1][@"locationLong"] doubleValue]];
		}
		[self.mapVC putMarkerWithLat:[self.quest[self.currentStep-1][@"locationLat"] doubleValue] long:[self.quest[self.currentStep-1][@"locationLong"] doubleValue]];
		[hud hideAnimated:YES];
		if (self.currentStep >= [self.quest count])
		{
			[self performSegueWithIdentifier:@"finishSegue" sender:self];
		}
		else
		{
			self.questTitle.text = self.quest[self.currentStep-1][@"title"];
			self.questRiddle.text = self.quest[self.currentStep-1][@"riddle"];
		}
		self.currentStep += 1;
	}];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"finishSegue"] && self.currentStep > [self.quest count])
	{
		UIViewController *controller = segue.destinationViewController;
		controller.transitioningDelegate = self;
		controller.modalPresentationStyle = UIModalPresentationCustom;
	}
	else if ([segue.identifier isEqualToString:@"embedSegue"])
	{
		self.mapVC = segue.destinationViewController;
	}
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
	self.bubbleTransition.transitionMode = BubbleTransitionModePresent;
	self.bubbleTransition.startingPoint = self.checkLocationButton.center;
	self.bubbleTransition.bubbleColor = [UIColor blueColor];
	return self.bubbleTransition;
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
	self.bubbleTransition.transitionMode = BubbleTransitionModeDismiss;
	self.bubbleTransition.startingPoint = self.checkLocationButton.center;
	self.bubbleTransition.bubbleColor = [UIColor blueColor];
	return self.bubbleTransition;
}

@end
