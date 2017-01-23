//
//  VerifyAndChangeMobileViewController.h
//  MarketMastro
//
//  Created by Mac on 14/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VerifyAndChangeMobileViewController : UIViewController
@property (nonatomic, strong) IBOutlet UITextField *txtFieldMobileNumber;
@property (nonatomic, strong) IBOutlet UIButton *btnVerify;
@property (nonatomic, strong) IBOutlet UIButton *btnChangeMobileNumber;
@property (nonatomic, strong) IBOutlet UILabel *labelOTPDelivered;
@property (nonatomic, strong) IBOutlet UIButton *btnResendOTP;
@property (nonatomic, strong) IBOutlet UIButton *btnOTPReceiveViaCall;
@property (nonatomic, strong) IBOutlet UILabel *labelOTPTime;
@property (nonatomic, strong) IBOutlet UIImageView *imageViewClockTime;
@end
//1,925