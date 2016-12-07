//
//  AccountsViewController.m
//  MarketMastro
//
//  Created by Mac on 17/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "AccountsViewController.h"
#import "SWRevealViewController.h"
#import "SubscriptionHistoryVC.h"
#import "UpgradeViewController.h"
@interface AccountsViewController ()

@end

@implementation AccountsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Account";
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];

    // Do any additional setup after loading the view.
    if(!_is_NotFromDraw)
    {
        SWRevealViewController *revealViewController = self.revealViewController;
        if ( revealViewController )
        {
            [self.sidebarButton setTarget: self.revealViewController];
            [self.sidebarButton setAction: @selector( revealToggle: )];
            [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)btnSubscriberBtnClick:(id)sender
{
    SubscriptionHistoryVC *subscriptionVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SubscriptionHistoryVC"];
    [self.navigationController pushViewController:subscriptionVC animated:YES];
    
}

-(IBAction)btnUpgradeBtnClick:(id)sender
{
    UpgradeViewController *subscriptionVC = [self.storyboard instantiateViewControllerWithIdentifier:@"UpgradeViewController"];
    subscriptionVC.is_NotFromDraw = YES;
    [self.navigationController pushViewController:subscriptionVC animated:YES];

}
-(IBAction)alertListBtnClick:(id)sender
{
    AlertViewController *calendarVC = [self.storyboard instantiateViewControllerWithIdentifier:@"AlertViewController"];
    calendarVC.is_NotFromDraw = YES;

    [self.navigationController pushViewController:calendarVC animated:YES];
    
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
