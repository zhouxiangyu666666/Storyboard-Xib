//
//  MyOrderViewController.m
//  OldProtectNewDid
//
//  Created by Jeremy on 2017/7/19.
//  Copyright © 2017年 TGSDK. All rights reserved.
//

#import "MyOrderViewController.h"
#import "MyOrderDataManager.h"
@interface MyOrderViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *MyScrollerView;

@property (weak, nonatomic) IBOutlet UIView *horizontalStrip;
@property (weak, nonatomic) IBOutlet UIButton *remittanceButton;
@property (weak, nonatomic) IBOutlet UIButton *gatheringButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *refundButton;

@end

@implementation MyOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _MyScrollerView.delegate=self;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(DetailsMyOrder:) name:@"DetailsMyOrder" object:nil];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)backClick:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)viewDidAppear:(BOOL)animated
{
    _MyScrollerView.contentSize=CGSizeMake(self.view.frame.size.width*4, self.view.frame.size.height-82);
    
}
-(void)DetailsMyOrder:(NSNotification *)noti
{
    [MyOrderDataManager shareInterface].intTag=[noti.object intValue];
    [self performSegueWithIdentifier:@"DetailsMyOrder" sender:self];
}
- (IBAction)remittance:(UIButton *)sender {
    _MyScrollerView.contentOffset=CGPointMake( 0,0 );
    [self horizontalStripAnimateWithButton:sender];
}
- (IBAction)gathering:(UIButton *)sender {
    _MyScrollerView.contentOffset=CGPointMake(self.view.frame.size.width,0);
    [self horizontalStripAnimateWithButton:sender];
}
- (IBAction)cancel:(UIButton *)sender {
    _MyScrollerView.contentOffset=CGPointMake(2*self.view.frame.size.width, 0);
    [self horizontalStripAnimateWithButton:sender];
}
- (IBAction)refund:(UIButton *)sender {
    _MyScrollerView.contentOffset=CGPointMake(3*self.view.frame.size.width, 0);
    [self horizontalStripAnimateWithButton:sender];
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int index=scrollView.contentOffset.x/self.view.frame.size.width;
    [self horizontalStripAnimateWithButton:[self.view viewWithTag:10000+index]];
}

-(void)horizontalStripAnimateWithButton:(UIButton *)button
{
    [UIView animateWithDuration:0.1 animations:^{
        _horizontalStrip.center=CGPointMake(button.center.x, 79);
    }];
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
