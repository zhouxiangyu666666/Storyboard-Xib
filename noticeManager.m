//
//  noticeManager.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/17.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "noticeManager.h"
#import "noticeViewController.h"
#define  windowWidth ([UIScreen mainScreen].bounds.size.width)
#define  windowHight ([UIScreen mainScreen].bounds.size.height)
@interface noticeManager()
@property(nonatomic,strong)UIWindow *noticeWidow;
@property(nonatomic,strong)noticeViewController *nvc;
@property(nonatomic,strong)UIView *owner;
@end
@implementation noticeManager
+(noticeManager*)shareInterface
{
    static noticeManager* _shareManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _shareManager=[[noticeManager alloc]init];
        
    });
    
    return _shareManager;
}
-(void)showNoticeWindowWithOwner:(UIView *)owner
{
    if (!_noticeWidow) {
        _noticeWidow=[[UIWindow alloc]initWithFrame:CGRectMake(0 , 0,279,101)];
        _noticeWidow.center=CGPointMake( windowWidth/2,windowHight/2);
        _noticeWidow.backgroundColor=[UIColor clearColor];
        _noticeWidow.windowLevel=10;
    }
    _nvc=[[noticeViewController alloc]initWithNibName:@"noticeViewController" bundle:nil];
    _noticeWidow.rootViewController=_nvc;
    _noticeWidow.hidden=NO;
    
    _owner=owner;
    owner.backgroundColor=[UIColor blackColor];
    owner.alpha=0.5;
    owner.userInteractionEnabled=NO;
    [self performSelector:@selector(hideNoticeWindow) withObject:nil afterDelay:2];
}
-(void)hideNoticeWindow
{
    _owner.userInteractionEnabled=YES;
    _owner.backgroundColor=[UIColor whiteColor];
    _owner.alpha=1;
    _noticeWidow.hidden=YES;
}
@end
