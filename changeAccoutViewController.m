//
//  changeAccoutViewController.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/19.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "changeAccoutViewController.h"
#import "chooseDataManager.h"
#import "chooseData.h"
@interface changeAccoutViewController ()
@property (weak, nonatomic) IBOutlet UITextField *bandNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *bandCardNumber;
@property (weak, nonatomic) IBOutlet UITextField *bandCardOwnerName;
@property (weak, nonatomic) IBOutlet UILabel *chooseBandLabel;

@end

@implementation changeAccoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
       [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(chooseDataType:) name:@"chooseBand" object:nil];
}
- (IBAction)backClick:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)chooseBand:(UITapGestureRecognizer *)sender {
    chooseData *chooseDataView = [[[NSBundle mainBundle] loadNibNamed:@"chooseData" owner:nil options:nil]lastObject];
    [chooseDataManager shareInterface].chooseDataType=11;
    chooseDataView.chooseDataTitle.text=@"选择银行";
    chooseDataView.center=CGPointMake(self.view.frame.size.width/2, 135+277/2);
    [self.view addSubview:chooseDataView];
}
-(void)chooseDataType:(NSNotification *)noti
{
    _chooseBandLabel.text=noti.object;
}
- (IBAction)commitClick:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
