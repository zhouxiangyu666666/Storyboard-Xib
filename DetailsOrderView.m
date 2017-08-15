//
//  DetailsOrderView.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/17.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "DetailsOrderView.h"

@implementation DetailsOrderView
-(void)awakeFromNib
{
    [super awakeFromNib];
    [[NSBundle mainBundle] loadNibNamed:@"DetailsOrderView" owner:self options:nil];
    [self addSubview:_contentView];
}
- (IBAction)signUpClick:(UIButton *)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"signUp" object:nil];
}
@end
