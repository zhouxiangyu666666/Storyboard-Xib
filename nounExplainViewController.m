//
//  nounExplainViewController.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/18.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "nounExplainViewController.h"

@interface nounExplainViewController ()

@end

@implementation nounExplainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBar"] forBarMetrics:UIBarMetricsDefault];
    NSDictionary *dic = @{
                          NSForegroundColorAttributeName: [UIColor whiteColor]};
    self.navigationController.navigationBar.titleTextAttributes =dic;
}
-(void)viewWillAppear:(BOOL)animated
{
   [self.navigationController setNavigationBarHidden:NO animated:YES];
}
-(void)viewWillDisappear:(BOOL)animated
{
   [self.navigationController setNavigationBarHidden:YES animated:YES];
}
- (IBAction)backClick:(UIBarButtonItem *)sender {
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
