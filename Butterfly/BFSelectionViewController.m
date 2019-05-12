//
//  BFSelectionViewControllerTableViewController.m
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/11/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import "BFSelectionViewController.h"
#import "BFTableViewCell.h"
#import "BFDetailsViewController.h"

@interface BFSelectionViewController ()

@end

@implementation BFSelectionViewController : UITableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.tableData = @[
						   @{@"picture_name" : @"LOTR_fellows_5788",
							 @"title" : @"Ancient City",
							 @"description" : @"Learn about ancient history",
							 @"steps" : @[@{@"title" : @"Find lost office",
											@"locationLat" : @49.8416263,
											@"locationLong" : @24.0017421,
								 @"riddle" : @"Evelyn Underhill (b. 6 Dec. 1875, d. 15 Jun 1941) was an English Anglo-Catholic writer who wrote extensively on Christian mysticism. A pacifist, novelist, and philosopher, she was widely read during the first half of the 20th century. This work, Mysticism, is not a textbook of the subject. She disagrees with William James' The Varieties of Religious Experience with his four-part division of"},
										  @{@"title" : @"Visit pizzeria",
											@"locationLat" : @49.8382205,
											@"locationLong" : @24.0054061,
											  @"riddle" : @"Underhill maps out her own view of the mystic's journey into five parts: Underhill is focussed on mysticism in Christianity but she also mentions Sufism, Hinduism, Buddhism, and other belief systems. This has long been considered a crucial work on the subject of Mysticism, and continues to guide seekers a century later"},
										  @{@"title" : @"Try to make a project in 24 hours",
											@"locationLat" : @49.8418097,
											@"locationLong" : @24.0137737,
											@"riddle" : @"Here's a simple extension to UIColor that lets you create colors from hex strings. The new method is a failable initializer, which means it returns nil if you don't specify a color in the correct format. It should be a # symbol, followed by red, green, blue and alpha in hex format, for a total of nine characters"}]
							 },
						   @{@"picture_name" : @"quest_art_rage_photo1",
							 @"title" : @"At the sun",
							 @"description" : @"Flying through the galaxy",
							 @"steps" : @[@{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8416263,
											@"locationLong" : @24.0017421,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle2",
											@"locationLat" : @49.8382205,
											@"locationLong" : @24.0054061,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle3",
											@"locationLat" : @49.8418097,
											@"locationLong" : @24.0137737,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"}]
							 },
						   @{@"picture_name" : @"ac-origins-thick-skin-side-quest",
							 @"title" : @"Lost garden",
							 @"description" : @"Find yourself in a green land",
							 @"steps" : @[@{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8416263,
											@"locationLong" : @24.0017421,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8382205,
											@"locationLong" : @24.0054061,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8418097,
											@"locationLong" : @24.0137737,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"}]
							 },
						   @{@"picture_name" : @"28161055",
							 @"title" : @"Lorem",
							 @"description" : @"Ipsum",
							 @"steps" : @[@{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8416263,
											@"locationLong" : @24.0017421,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8382205,
											@"locationLong" : @24.0054061,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8418097,
											@"locationLong" : @24.0137737,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"}]
							 },
						   @{@"picture_name" : @"Cables_Lviv",
							 @"title" : @"Cables everywhere",
							 @"description" : @"Yeah you'll like it",
							 @"steps" : @[@{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8416263,
											@"locationLong" : @24.0017421,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8382205,
											@"locationLong" : @24.0054061,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8418097,
											@"locationLong" : @24.0137737,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"}]
							 },
						   @{@"picture_name" : @"lviivv",
							 @"title" : @"Ipsum",
							 @"description" : @"dolor sit amet",
							 @"steps" : @[@{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8416263,
											@"locationLong" : @24.0017421,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8382205,
											@"locationLong" : @24.0054061,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8418097,
											@"locationLong" : @24.0137737,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"}]
							 },
						   @{@"picture_name" : @"lviv2",
							 @"title" : @"dolore magna aliqua",
							 @"description" : @"nostrud exercitatio",
							 @"steps" : @[@{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8416263,
											@"locationLong" : @24.0017421,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8382205,
											@"locationLong" : @24.0054061,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8418097,
											@"locationLong" : @24.0137737,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"}]
							 },
						   @{@"picture_name" : @"lwow",
							 @"title" : @"reprehenderit in voluptate",
							 @"description" : @"proident, sunt",
							 @"steps" : @[@{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8416263,
											@"locationLong" : @24.0017421,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8382205,
											@"locationLong" : @24.0054061,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8418097,
											@"locationLong" : @24.0137737,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"}]
							 },
						   @{@"picture_name" : @"Львів. Різдво на ринкові площі.",
							 @"title" : @"Excepteur sint occaecat",
							 @"description" : @"commodo consequat",
							 @"steps" : @[@{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8416263,
											@"locationLong" : @24.0017421,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8382205,
											@"locationLong" : @24.0054061,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"},
										  @{@"title" : @"RiddleTitle1",
											@"locationLat" : @49.8418097,
											@"locationLong" : @24.0137737,
											@"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"}]
							 }];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)anIndexPath
{
	NSInteger index = anIndexPath.row;
	NSDictionary *cellData = self.tableData[index];
	
	//KSFlashmobCell *cell = [aTableView dequeueReusableCellWithIdentifier:flashmob[@"id"]];
	
	//  if (cell == nil)
	//  {
	NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell"
												 owner:self
											   options:nil];
	BFTableViewCell *cell = nib.firstObject;
	//  }
	
	//cell.backgroundColor = [UIColor clearColor];
	//cell.backgroundView = [[UIView new] autorelease];
	//cell.selectedBackgroundView = [[UIView new] autorelease];
	
	cell.title.text = cellData[@"title"];
	cell.shortDescription.text = cellData[@"description"];
	cell.imageV.image = [UIImage imageNamed:cellData[@"picture_name"]];

	return cell;
}

- (NSInteger)tableView:(UITableView *)aTableView numberOfRowsInSection:(NSInteger)aSection
{
	return self.tableData.count;
}

- (CGFloat)tableView:(UITableView *)aTableView heightForRowAtIndexPath:(NSIndexPath *)anIndexPath
{
	return kBFCellHeight;
}

- (void)tableView:(UITableView *)aTableView didSelectRowAtIndexPath:(NSIndexPath *)anIndexPath
{
	[self.tableView deselectRowAtIndexPath:anIndexPath animated:YES];
	NSInteger index = anIndexPath.row;
	NSDictionary *quest = self.tableData[index][@"steps"];
	[self showDetails:quest];
}

- (void)showDetails:(NSArray *)aDetails
{
	BFDetailsViewController *detailsVC = [[BFDetailsViewController alloc] initWithQuest:aDetails step:1];
	[self.navigationController pushViewController:detailsVC animated:NO];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
