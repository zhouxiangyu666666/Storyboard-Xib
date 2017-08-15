//
//  MyOrderData.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/19.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "MyOrderDataManager.h"

@implementation MyOrderDataManager
+(MyOrderDataManager*)shareInterface
{
    static MyOrderDataManager* _shareManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _shareManager=[[MyOrderDataManager alloc]init];
        
    });
    
    return _shareManager;
}
-(void)setMyOrderDataDic
{
    NSDictionary *dic1= [NSDictionary dictionaryWithObjectsAndKeys:@"北京百袋旅行",@"titleLabel",@"2017/9/1-2017/9/3",@"severTimeLabel",@"3天",@"severDataLabel",@"北京",@"fromCity",@"西安",@"serveCity",@"2017/5/13 18:01",@"releaseLabel",@"600元",@"moneyLabel",nil];
    NSDictionary *dic2= [NSDictionary dictionaryWithObjectsAndKeys:@"去哪旅行网",@"titleLabel",@"2017/9/12-2017/9/14",@"severTimeLabel",@"3天",@"severDataLabel",@"北京",@"fromCity",@"上海",@"serveCity",@"2017/5/17 20:15",@"releaseLabel",@"900元",@"moneyLabel",nil];
    NSDictionary *dic3= [NSDictionary dictionaryWithObjectsAndKeys:@"西安正途国旅",@"titleLabel",@"2017/11/5-2017/11/6",@"severTimeLabel",@"2天",@"severDataLabel",@"西安",@"fromCity",@"成都",@"serveCity",@"2017/6/25 9:41",@"releaseLabel",@"800元",@"moneyLabel",nil];
    NSDictionary *dic4= [NSDictionary dictionaryWithObjectsAndKeys:@"Shooting Stars",@"titleLabel",@"2017/10/1-2017/10/7",@"severTimeLabel",@"7天",@"severDataLabel",@"纽约",@"fromCity",@"悉尼",@"serveCity",@"2017/2/24 15:18",@"releaseLabel",@"1100元",@"moneyLabel",nil];
    _MyOrderDataArr=@[dic1,dic2,dic3,dic4];
}
@end
