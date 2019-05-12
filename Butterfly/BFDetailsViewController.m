//
//  ViewController.m
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/11/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import "BFDetailsViewController.h"

@interface BFDetailsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *questRiddle;
@property (weak, nonatomic) IBOutlet UILabel *questTitle;
@property (nonatomic) NSDictionary *quest;
@end

@implementation BFDetailsViewController

- (instancetype)initWithQuest:(NSDictionary *)aQuest
{
	UIStoryboard*  sb = [UIStoryboard storyboardWithName:@"Main"
												  bundle:nil];
	self = [sb instantiateViewControllerWithIdentifier:@"BFDetailsViewController"];
	
	if (self != nil)
	{
		_quest = aQuest;
	}
	
	return self;
}


- (void)viewDidLoad
{
	[super viewDidLoad];
	self.questTitle.text = self.quest[@"title"];
	self.questRiddle.text = self.quest[@"riddle"];
}


@end
