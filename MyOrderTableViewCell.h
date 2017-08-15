//
//  MyOrderTableViewCell.h
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/19.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyOrderTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *severTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *severDataLabel;

@property (weak, nonatomic) IBOutlet UILabel *fromCity;
@property (weak, nonatomic) IBOutlet UILabel *serveCity;
@property (weak, nonatomic) IBOutlet UILabel *releaseLabel;
@property (weak, nonatomic) IBOutlet UILabel *moneyLabel;
-(void)setCellWithDictionary:(NSDictionary *)dic;
@end
