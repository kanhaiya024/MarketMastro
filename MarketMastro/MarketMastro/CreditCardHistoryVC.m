//
//  CreditCardHistoryVC.m
//  MarketMastro
//
//  Created by Kanhaiya on 26/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "CreditCardHistoryVC.h"

@interface CreditCardHistoryVC ()

@end

@implementation CreditCardHistoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Credit History";
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

-(IBAction)optionBtnClick:(id)sender
{
    UIButton *btn = (UIButton*)sender;
    UIButton *btnAll = (UIButton*)[self.view viewWithTag:10];
    UIButton *btnReceive = (UIButton*)[self.view viewWithTag:11];
    UIButton *btnPaid = (UIButton*)[self.view viewWithTag:12];
    if(btn == btnAll)
    {
        btnAll.selected = YES;
        btnPaid.selected = NO;
        btnReceive.selected = NO;
    }
    else if(btn == btnReceive)
    {
        btnAll.selected = NO;
        btnPaid.selected = YES;
        btnReceive.selected = NO;
    }
    else if(btn == btnPaid)
    {
        btnAll.selected = YES;
        btnPaid.selected = YES;
        btnReceive.selected = NO;
    }

}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
