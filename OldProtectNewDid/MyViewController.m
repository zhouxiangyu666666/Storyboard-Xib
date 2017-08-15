//
//  MyViewController.m
//  OldProtectNewDid
//
//  Created by Linyou-IOS-1 on 17/5/24.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollerView;
@property (weak, nonatomic) IBOutlet UIPageControl *ShowPage;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _myScrollerView.delegate=self;
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int index=scrollView.contentOffset.x/self.view.frame.size.width;
    _ShowPage.currentPage=index;
}
-(void)viewDidAppear:(BOOL)animated
{
    _myScrollerView.contentSize=CGSizeMake(3*self.view.frame.size.width, _myScrollerView.frame.size.height);
}
@end
