//
//  MyOrderData.h
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/19.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyOrderDataManager : NSObject
@property(nonatomic,assign)int intTag;
@property(nonatomic,strong)NSArray *MyOrderDataArr;
+(MyOrderDataManager*)shareInterface;
-(void)setMyOrderDataDic;
@end
