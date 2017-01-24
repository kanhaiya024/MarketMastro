//
//  MarketDetailsVC.m
//  MarketMastro
//
//  Created by Vodlo iMac 022 on 24/01/17.
//  Copyright © 2017 Macmittal software. All rights reserved.
//

#import "MarketDetailsVC.h"
#import "AppDelegate.h"
#import "MarketCreateAlertVC.h"

@interface MarketDetailsVC ()

@end

@implementation MarketDetailsVC

- (void)viewDidLoad {
    self.title = @"Silver March 2007";

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)goBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(IBAction)addtionButtonClick:(id)sender
{
    self.viewForAddOptions.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    [self.view addSubview:self.viewForAddOptions];    
}

-(IBAction)addPortfolioButtonClick:(id)sender
{
    [self.viewForAddOptions removeFromSuperview];
    self.viewForPopupView.frame = self.view.frame;
    [self.view addSubview:self.viewForPopupView];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 3 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [self.viewForPopupView removeFromSuperview];
    });
}
-(IBAction)addAlertButtonClick:(id)sender
{
    [self.viewForAddOptions removeFromSuperview];

    MarketCreateAlertVC *createAlertvc = [self.storyboard instantiateViewControllerWithIdentifier:@"MarketCreateAlertVC"];
    [self.navigationController pushViewController:createAlertvc animated:YES];

}
- (IBAction)dismissPopView:(id)sender {
    [self.viewForPopupView removeFromSuperview];
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
