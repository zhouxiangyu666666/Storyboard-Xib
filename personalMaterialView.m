//
//  tryView.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/13.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "personalMaterialView.h"

@implementation personalMaterialView
-(void)awakeFromNib
{
    [super awakeFromNib];
    [[NSBundle mainBundle] loadNibNamed:@"personalMaterialView" owner:self options:nil];
    [self addSubview:_contentView];
}
@end
