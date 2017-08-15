//
//  chooseDataManager.h
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/12.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface chooseDataManager : NSObject
+(chooseDataManager*)shareInterface;
@property(nonatomic,assign)int chooseDataType;
@property(nonatomic,strong)NSArray *yearArray;
@property(nonatomic,strong)NSArray *monthArray;
@property(nonatomic,strong)NSArray *bandArray;
@end
