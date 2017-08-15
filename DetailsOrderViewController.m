//
//  DetailsOrderViewController.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/17.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "DetailsOrderViewController.h"
#import "noticeManager.h"
@interface DetailsOrderViewController ()

@end

@implementation DetailsOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(signUpClick) name:@"signUp" object:nil];
}
-(void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}
-(void)viewDidAppear:(BOOL)animated
{
    _DetailsOrderScroller.contentSize=CGSizeMake(self.view.frame.size.width,self.view.frame.size.height+350);
}

- (IBAction)backbutton:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)signUpClick
{
    [noticeManager shareInterface].noticeLabelText=@"报名成功";
    [[noticeManager shareInterface] showNoticeWindowWithOwner:self.view];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
