//
//  MyOrderTableView.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/19.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "MyOrderTableView.h"
#import "MyOrderTableViewCell.h"
#import "MyOrderDataManager.h"
@implementation MyOrderTableView

- (void)awakeFromNib {
    [super awakeFromNib];
    self.delegate=self;
    self.dataSource=self;
    if (![MyOrderDataManager shareInterface].MyOrderDataArr) {
        [[MyOrderDataManager shareInterface] setMyOrderDataDic];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyOrderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyOrderTableViewCell"];
    if (cell==nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"MyOrderTableViewCell" owner:self options:nil] lastObject];
    }
    [cell setCellWithDictionary:[MyOrderDataManager shareInterface].MyOrderDataArr[self.tag-100]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 331;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"DetailsMyOrder" object:[NSString stringWithFormat:@"%ld",self.tag-100]];
}
@end
