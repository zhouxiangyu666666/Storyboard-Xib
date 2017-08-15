//
//  chooseDataManager.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/12.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "chooseDataManager.h"

@implementation chooseDataManager
+(chooseDataManager*)shareInterface
{
    static chooseDataManager* _shareManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{

        _shareManager=[[chooseDataManager alloc]init];
        
    });
    
    return _shareManager;
    
}
@end
