//
//  noticeViewController.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/18.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "noticeViewController.h"
#import "noticeManager.h"
@interface noticeViewController ()

@end

@implementation noticeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _noticeLabelString.text=[noticeManager shareInterface].noticeLabelText;
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
