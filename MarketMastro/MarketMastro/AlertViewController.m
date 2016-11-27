//
//  AlertViewController.m
//  MarketMastro
//
//  Created by Mac on 23/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "AlertViewController.h"
#import "SWRevealViewController.h"
#import "CreateAlertVC.h"
@interface AlertViewController ()

@end

@implementation AlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Alert Center";
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];

    
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
    else{
        [self.sidebarButton setImage:[UIImage imageNamed:@"back-button"]];
        [self.sidebarButton setTarget: self];
        [self.sidebarButton setAction: @selector( goBack: )];

    }
    // Do any additional setup after loading the view.

}
-(void)goBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)createAlertVIew:(id)sender {
    CreateAlertVC *createAlertvc = [self.storyboard instantiateViewControllerWithIdentifier:@"CreateAlertVC"];
    [self.navigationController pushViewController:createAlertvc animated:YES];
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
