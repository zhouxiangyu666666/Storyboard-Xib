//
//  chooseDataTableViewCell.h
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/12.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface chooseDataTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *chooseDataLabel;
-(void)setCellDataWithIndexPath:(NSIndexPath *)indexPath;
@end
