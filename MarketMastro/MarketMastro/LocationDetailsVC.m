//
//  LocationDetailsVC.m
//  MarketMastro
//
//  Created by Vodlo iMac 022 on 24/01/17.
//  Copyright © 2017 Macmittal software. All rights reserved.
//

#import "LocationDetailsVC.h"

@interface LocationDetailsVC ()

@end

@implementation LocationDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"MLGGOLD999";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)goBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
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
