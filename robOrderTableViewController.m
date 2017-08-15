//
//  robOrderTableViewController.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/13.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "robOrderTableViewController.h"
#import "robOrderTableViewCell.h"
#import "noticeManager.h"
@interface robOrderTableViewController ()

@end

@implementation robOrderTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(signUpClick) name:@"signUpString" object:nil];
}
- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBar"] forBarMetrics:UIBarMetricsDefault];
    NSDictionary *dic = @{
                          NSForegroundColorAttributeName: [UIColor whiteColor]};
    self.navigationController.navigationBar.titleTextAttributes =dic;
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

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    robOrderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"robOrderTableViewCell"];
    if (cell==nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"robOrderTableViewCell" owner:self options:nil] lastObject];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 331;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"detailedrobOrder" sender:self];
}

- (IBAction)back:(UIBarButtonItem *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)viewWillDisappear:(BOOL)animated
{
//    [super viewWillDisappear:YES];
//    self.navigationController.navigationBar.hidden=YES;
}
@end
