//
//  ViewController.h
//  MarketMastro
//
//  Created by Mac on 10/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    BOOL keyboardIsShowing;

}

@property (nonatomic, strong) IBOutlet UITextField *txtFieldFullName;
@property (nonatomic, strong) IBOutlet UITextField *txtFieldMobileNumber;
@property (nonatomic, strong) IBOutlet UITextField *txtFieldLocation;
@property (nonatomic, strong) IBOutlet UITextField *txtFieldReferalCode;
@property (nonatomic, strong) IBOutlet UIButton *btnCheckAndUncheckPrivacy;
@property (nonatomic, strong) IBOutlet UIButton *btnRegister;
@property (nonatomic, strong) IBOutlet UIButton *btnSignIn;
@property (nonatomic, strong) IBOutlet UILabel *lableTerms;


@end

