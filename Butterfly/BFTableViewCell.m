//
//  BFTableViewCell.m
//  Butterfly
//
//  Created by Kostiantyn Palianychko on 5/12/19.
//  Copyright © 2019 Kostiantyn Palianychko. All rights reserved.
//

#import "BFTableViewCell.h"

const NSUInteger kBFCellHeight = 79;

@interface BFTableViewCell ()

@end

@implementation BFTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateData
{
	self.imageV.image = [UIImage imageNamed:@"LOTR_fellows_5788"];
}


@end
