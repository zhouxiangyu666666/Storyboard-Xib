//
//  robOrderTableViewCell.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/13.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "robOrderTableViewCell.h"

@implementation robOrderTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (IBAction)signUpClick:(UIButton *)sender {
    [[NSNotificationCenter defaultCenter]postNotificationName:@"signUpString" object:nil];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
