//
//  BFTableViewCell.h
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/12/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

extern const NSUInteger kBFCellHeight;

@interface BFTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *shortDescription;

- (void)updateData;

@end

NS_ASSUME_NONNULL_END
