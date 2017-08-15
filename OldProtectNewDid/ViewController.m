//
//  ViewController.m
//  OldProtectNewDid
//
//  Created by Linyou-IOS-1 on 17/5/24.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)squareButtonClick:(UIButton *)sender {
    sender.selected=!sender.selected;
}
- (IBAction)seePassword:(UIButton *)sender {
    sender.selected=!sender.selected;
}
- (IBAction)loginButton:(UIButton *)sender {
    
}
- (IBAction)register:(id)sender {
    NSLog(@"register");
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
