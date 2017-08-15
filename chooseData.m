//
//  chooseData.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/12.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "chooseData.h"
#import "chooseDataManager.h"
#import "chooseDataTableViewCell.h"
@implementation chooseData

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [chooseDataManager shareInterface].chooseDataType;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    chooseDataTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"chooseDataIdentifier"];
    if (cell==nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"chooseDataTableViewCell" owner:self options:nil] lastObject];
    }
    [cell setCellDataWithIndexPath:indexPath];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([chooseDataManager shareInterface].chooseDataType==10) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"chooseData" object:[chooseDataManager shareInterface].yearArray[indexPath.row]];
    }
    if ([chooseDataManager shareInterface].chooseDataType==12) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"chooseData" object:[chooseDataManager shareInterface].monthArray[indexPath.row]];
    }
    if ([chooseDataManager shareInterface].chooseDataType==11) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"chooseBand" object:[chooseDataManager shareInterface].bandArray[indexPath.row]];
    }
    [self removeFromSuperview];
}
@end
