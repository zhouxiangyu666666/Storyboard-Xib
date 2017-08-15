//
//  noticeManager.h
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/17.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface noticeManager : NSObject
+(noticeManager*)shareInterface;
-(void)showNoticeWindowWithOwner:(UIView *)owner;
@property(nonatomic,strong)NSString *noticeLabelText;
@end
