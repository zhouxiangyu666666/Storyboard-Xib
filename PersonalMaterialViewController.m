//
//  PersonalMaterialViewController.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/12.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "PersonalMaterialViewController.h"

@interface PersonalMaterialViewController ()

@end

@implementation PersonalMaterialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _personalMaterialButton.layer.borderColor=[[UIColor whiteColor]CGColor];
    
}
-(void)viewDidAppear:(BOOL)animated
{
    _personalMaterialScroller.contentSize=CGSizeMake(self.view.frame.size.width, 1200);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
