//
//  chooseDataTableViewCell.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/12.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "chooseDataTableViewCell.h"
#import "chooseDataManager.h"
@implementation chooseDataTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(void)setCellDataWithIndexPath:(NSIndexPath *)indexPath
{
    [chooseDataManager shareInterface].yearArray = @[@"2017年",@"2016年",@"2015年",@"2014年",@"2013年",@"2012年",@"2011年",@"2010年",@"2009年",@"2008年"];
    [chooseDataManager shareInterface].monthArray = @[@"1月",@"2月",@"3月",@"4月",@"5月",@"6月",@"7月",@"8月",@"9月",@"10月",@"11月",@"12月"];
    [chooseDataManager shareInterface].bandArray= @[@"北京银行",@"中国农业银行",@"中国工商银行",@"广发银行",@"招商银行",@"大连银行",@"平安银行",@"民生银行",@"兴业银行",@"建设银行",@"中国银行"];
    if ([chooseDataManager shareInterface].chooseDataType==10) {
        self.chooseDataLabel.text=[chooseDataManager shareInterface].yearArray[indexPath.row];
    }
    if ([chooseDataManager shareInterface].chooseDataType==12) {
        self.chooseDataLabel.text=[chooseDataManager shareInterface].monthArray[indexPath.row];
    }
    if ([chooseDataManager shareInterface].chooseDataType==11) {
        self.chooseDataLabel.text=[chooseDataManager shareInterface].bandArray[indexPath.row];
    }
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
