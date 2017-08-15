//
//  statisticsViewController.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/18.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "statisticsViewController.h"
#import "chooseData.h"
#import "chooseDataManager.h"
@interface statisticsViewController ()
@property (weak, nonatomic) IBOutlet UIButton *yearButton;
@property (weak, nonatomic) IBOutlet UIButton *monthButton;
@property (weak, nonatomic) IBOutlet UIScrollView *MyScroller;

@end

@implementation statisticsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets=NO;
    _yearButton.layer.borderColor=[[UIColor whiteColor]CGColor];
    _monthButton.layer.borderColor=[[UIColor whiteColor]CGColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(chooseDataType:) name:@"chooseData" object:nil];
    
}
- (IBAction)chooseYearData:(UIButton *)sender {
    chooseData *chooseDataView = [[[NSBundle mainBundle] loadNibNamed:@"chooseData" owner:nil options:nil]lastObject];
    [chooseDataManager shareInterface].chooseDataType=10;
    chooseDataView.chooseDataTitle.text=@"选择年份";
    chooseDataView.center=CGPointMake(self.view.frame.size.width/2, 135+277/2);
    [self.view addSubview:chooseDataView];
}

- (IBAction)chooseMonthData:(UIButton *)sender {
    chooseData *chooseDataView = [[[NSBundle mainBundle] loadNibNamed:@"chooseData" owner:nil options:nil]lastObject];
    [chooseDataManager shareInterface].chooseDataType=12;
    chooseDataView.chooseDataTitle.text=@"选择月份";
    chooseDataView.center=CGPointMake(self.view.frame.size.width/2, 135+277/2);
    [self.view addSubview:chooseDataView];
}
- (IBAction)backClick:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)nounExplain:(UIButton *)sender {
    [self performSegueWithIdentifier:@"nounExplain" sender:self];
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
-(void)viewDidAppear:(BOOL)animated
{
    _MyScroller.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+200);
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
