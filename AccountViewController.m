//
//  AccountViewController.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/12.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "AccountViewController.h"
#import "chooseData.h"
#import "chooseDataManager.h"
@interface AccountViewController ()
@property (weak, nonatomic) IBOutlet UIButton *yearButton;
@property (weak, nonatomic) IBOutlet UIButton *monthButton;

@end

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _yearButton.layer.borderColor=[[UIColor whiteColor]CGColor];
    _monthButton.layer.borderColor=[[UIColor whiteColor]CGColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(chooseDataType:) name:@"chooseData" object:nil];
}
-(void)viewDidAppear:(BOOL)animated
{
    _accountScroller.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
}

- (IBAction)yearClick:(UIButton *)sender {
    chooseData *chooseDataView = [[[NSBundle mainBundle] loadNibNamed:@"chooseData" owner:nil options:nil]lastObject];
    [chooseDataManager shareInterface].chooseDataType=10;
    chooseDataView.chooseDataTitle.text=@"选择年份";
    chooseDataView.center=CGPointMake(self.view.frame.size.width/2, 135+277/2);
    [self.view addSubview:chooseDataView];
}
- (IBAction)monthClick:(UIButton *)sender {
    chooseData *chooseDataView = [[[NSBundle mainBundle] loadNibNamed:@"chooseData" owner:nil options:nil]lastObject];
    [chooseDataManager shareInterface].chooseDataType=12;
    chooseDataView.chooseDataTitle.text=@"选择月份";
    chooseDataView.center=CGPointMake(self.view.frame.size.width/2, 135+277/2);
    [self.view addSubview:chooseDataView];
}
-(void)chooseDataType:(NSNotification *)noti
{
    if ([chooseDataManager shareInterface].chooseDataType==10) {
        [_yearButton setTitle:noti.object forState:UIControlStateNormal];
    }
    if ([chooseDataManager shareInterface].chooseDataType==12) {
        [_monthButton setTitle:noti.object forState:UIControlStateNormal];
    }
}

- (IBAction)inspectDetailed:(UIButton *)sender {
    
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
