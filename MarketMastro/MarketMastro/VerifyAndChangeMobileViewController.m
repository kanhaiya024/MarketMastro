//
//  VerifyAndChangeMobileViewController.m
//  MarketMastro
//
//  Created by Mac on 14/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "VerifyAndChangeMobileViewController.h"

@interface VerifyAndChangeMobileViewController ()

@end

@implementation VerifyAndChangeMobileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.btnVerify.layer.cornerRadius = 3.0f; // this value vary as per your desire
    self.btnVerify.clipsToBounds = YES;
    
    self.btnResendOTP.layer.cornerRadius = 3.0f; // this value vary as per your desire
    self.btnResendOTP.clipsToBounds = YES;
    
    self.btnOTPReceiveViaCall.layer.cornerRadius = 3.0f; // this value vary as per your desire
    self.btnOTPReceiveViaCall.clipsToBounds = YES;
    
    self.btnChangeMobileNumber.layer.cornerRadius = 3.0f; // this value vary as per your desire
    self.btnChangeMobileNumber.clipsToBounds = YES;
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [self.navigationController.navigationBar setHidden:YES];
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
    [self.navigationController.navigationBar setHidden:NO];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
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
