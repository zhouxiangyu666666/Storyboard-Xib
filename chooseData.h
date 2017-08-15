//
//  chooseData.h
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/12.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface chooseData : UIView<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *chooseDataTableView;
@property (weak, nonatomic) IBOutlet UILabel *chooseDataTitle;
@end
