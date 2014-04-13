//
//  FGTaskCell.m
//  MVCExample
//
//  Created by chenlihui on 14-4-13.
//  Copyright (c) 2014年 Future Game. All rights reserved.
//

#import "FGTaskCell.h"

@implementation FGTaskCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setIsCompleted:(BOOL)isCompleted {
    if (isCompleted) {
        [self.labelTask setTextColor:[UIColor redColor]];
    } else {
        [self.labelTask setTextColor:[UIColor greenColor]];
    }
}

@end
