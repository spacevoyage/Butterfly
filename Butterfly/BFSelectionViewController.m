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
@property (nonatomic) NSArray *tableData;
@end

@implementation BFSelectionViewController : UITableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.tableData = @[
						   @{@"picture_name" : @"quest_art_rage_photo1",
							 @"title" : @"Title1",
							 @"description" : @"Description1",
							 @"riddle" : @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
							 },
						   @{@"picture_name" : @"quest_art_rage_photo1",
							 @"title" : @"Title2",
							 @"description" : @"Description2",
							 @"riddle" : @"riddle2"
							 },
						   @{@"picture_name" : @"quest_art_rage_photo1",
							 @"title" : @"Title3",
							 @"description" : @"Description3",
							 @"riddle" : @"riddle3"
							 },
						   @{@"picture_name" : @"quest_art_rage_photo1",
							 @"title" : @"Title4",
							 @"description" : @"Description4",
							 @"riddle" : @"riddle4"
							 },
						   @{@"picture_name" : @"quest_art_rage_photo1",
							 @"title" : @"Title5",
							 @"description" : @"Description5",
							 @"riddle" : @"riddle5"
							 },
						   @{@"picture_name" : @"quest_art_rage_photo1",
							 @"title" : @"Title6",
							 @"description" : @"Description6",
							 @"riddle" : @"riddle6"
							 },
						   @{@"picture_name" : @"quest_art_rage_photo1",
							 @"title" : @"Title7",
							 @"description" : @"Description7",
							 @"riddle" : @"riddle7"
							 },
						   @{@"picture_name" : @"quest_art_rage_photo1",
							 @"title" : @"Title8",
							 @"description" : @"Description8",
							 @"riddle" : @"riddle8"
							 },
						   @{@"picture_name" : @"quest_art_rage_photo1",
							 @"title" : @"Title9",
							 @"description" : @"Description9",
							 @"riddle" : @"riddle9"
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
	
	cell.title = cellData[@"title"];
	cell.shortDescription = cellData[@"description"];
	[cell updateData];
	

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
	NSDictionary *quest = self.tableData[index];
	[self showDetails:quest];
}

- (void)showDetails:(NSDictionary *)aDetails
{
	BFDetailsViewController *detailsVC = [[BFDetailsViewController alloc] initWithQuest:aDetails];
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
