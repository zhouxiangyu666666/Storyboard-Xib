//
//  MessageCell.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/11.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "MessageCell.h"

@implementation MessageCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.userInteractionEnabled=YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

@end
