//
//  MyOrderTableViewCell.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/19.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "MyOrderTableViewCell.h"

@implementation MyOrderTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

-(void)setCellWithDictionary:(NSDictionary *)dic
{
    self.titleLabel.text=[dic objectForKey:@"titleLabel"];
    self.severTimeLabel.text=[dic objectForKey:@"severTimeLabel"];
    self.severDataLabel.text=[dic objectForKey:@"severDataLabel"];
    self.serveCity.text=[dic objectForKey:@"serveCity"];
    self.fromCity.text=[dic objectForKey:@"fromCity"];
    self.moneyLabel.text=[dic objectForKey:@"moneyLabel"];
    self.releaseLabel.text=[dic objectForKey:@"releaseLabel"];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
