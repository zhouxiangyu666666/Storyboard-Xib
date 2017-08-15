//
//  HomeViewController.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/5/27.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "HomeViewController.h"
#import "ZFChooseTimeViewController.h"
@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *headImageView;
@property (weak, nonatomic) IBOutlet UIButton *rushOrder;
@property (weak, nonatomic) IBOutlet UIButton *MyCalendar;
@property (weak, nonatomic) IBOutlet UIButton *MyOrder;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden=YES;
    _headImageView.layer.cornerRadius=_headImageView.frame.size.width/2;
    _rushOrder.layer.borderColor=[[UIColor whiteColor]CGColor];
    _MyOrder.layer.borderColor=[[UIColor whiteColor]CGColor];
    _MyCalendar.layer.borderColor=[[UIColor whiteColor]CGColor];

}
- (void)viewWillAppear:(BOOL)animated {
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
- (IBAction)showCalendar:(UIButton *)sender {
    ZFChooseTimeViewController *zfc = [[ZFChooseTimeViewController alloc]init];
    [self.navigationController pushViewController:zfc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
