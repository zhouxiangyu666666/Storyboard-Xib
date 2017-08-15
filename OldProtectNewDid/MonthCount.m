//
//  MonthCount.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/5/27.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "MonthCount.h"

@implementation MonthCount
-(void)awakeFromNib
{
    [super awakeFromNib];
    [[NSBundle mainBundle] loadNibNamed:@"MonthCount" owner:self options:nil];
    [self addSubview:_ContentView];
}
@end
