//
//  ViewController.m
//  MarketMastro
//
//  Created by Mac on 10/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //ss
//    CALayer *bottomBorder = [CALayer layer];
//    bottomBorder.frame = CGRectMake(0.0f, self.txtFieldFullName.frame.size.height - 1, self.txtFieldFullName.frame.size.width, 2.0f);
//    bottomBorder.backgroundColor = [UIColor redColor].CGColor;
//    [self.txtFieldFullName.layer addSublayer:bottomBorder];

    // Do any additional setup after loading the view, typically from a nib.
    self.txtFieldFullName = [self borderColor:self.txtFieldFullName withMask:YES];
    self.txtFieldFullName = [self placeHolderColor:self.txtFieldFullName withSting:@"Full Name*"];
    self.txtFieldFullName.leftView =[self paddingView:self.txtFieldFullName withImageNamed:@"reg_user_icon.png"];
    
    self.txtFieldMobileNumber = [self borderColor:self.txtFieldMobileNumber withMask:YES];
    self.txtFieldMobileNumber = [self placeHolderColor:self.txtFieldMobileNumber withSting:@"Mobile Number*"];
    self.txtFieldMobileNumber.leftView =[self paddingView:self.txtFieldMobileNumber withImageNamed:@"reg_mobile_icon.png"];
    
    self.txtFieldLocation = [self borderColor:self.txtFieldLocation withMask:YES];
    self.txtFieldLocation = [self placeHolderColor:self.txtFieldLocation withSting:@"mumbai"];
    self.txtFieldLocation.leftView =[self paddingView:self.txtFieldLocation withImageNamed:@"reg_location_icon.png"];
    
    self.txtFieldReferalCode = [self borderColor:self.txtFieldReferalCode withMask:YES];
    self.txtFieldReferalCode = [self placeHolderColor:self.txtFieldReferalCode withSting:@"Referral Code"];
    self.txtFieldReferalCode.leftView =[self paddingView:self.txtFieldReferalCode withImageNamed:@"reg_mobile_icon.png"];
    
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    UIImageView *viewImgTxtUser=[[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 20,20)];
    [viewImgTxtUser setImage:[UIImage imageNamed:@"reg_target_icon.png"]];
    [paddingView addSubview:viewImgTxtUser];
    self.txtFieldLocation.rightViewMode = UITextFieldViewModeAlways;
    self.txtFieldLocation.rightView = paddingView;
    
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@",self.lableTerms.text]];
    NSRange rangeOne = [self.lableTerms.text rangeOfString:@"Terms of service"];
    NSRange rangeTwo = [self.lableTerms.text rangeOfString:@"Privacy Policy"];
    [string addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica Bold" size:12.0] range:NSMakeRange(10, 14)];
    [string addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:rangeOne];
    [string addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:rangeTwo];
    self.lableTerms.attributedText = string;
    
    self.btnRegister.layer.cornerRadius = 3.0f; // this value vary as per your desire
    self.btnRegister.clipsToBounds = YES;

   // [string addAttributes:[NSFontAttributeName:[UIFont fontWithName:@"Helvetica Neue Medium" size:12.0]]];
    

    
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [self.navigationController.navigationBar setHidden:YES];
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
    [self.navigationController.navigationBar setHidden:NO];
}
- (UITextField *)placeHolderColor:(UITextField *)txt withSting:(NSString *)placeHolderString {
    UIColor *color = [UIColor colorWithRed:149/255.0 green:149/255.0 blue:149/255.0 alpha:1.0];
    txt.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeHolderString attributes:@{NSForegroundColorAttributeName: color}];
    return txt;
}
- (UITextField *)borderColor:(UITextField*)txt withMask:(BOOL)maskValue {
        txt.layer.borderColor=[[UIColor colorWithRed:41/255.0 green:42/255.0 blue:43/255.0 alpha:1.0]CGColor];
        txt.layer.borderWidth= 0.1f;
        txt.layer.masksToBounds = maskValue;
    return txt;

}
- (UIView*)paddingView:(UITextField *)txt withImageNamed:(NSString *)image {
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    UIImageView *viewImgTxtUser=[[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 20,20)];
    [viewImgTxtUser setImage:[UIImage imageNamed:image]];
    [paddingView addSubview:viewImgTxtUser];
    txt.leftViewMode = UITextFieldViewModeAlways;
   return paddingView;
    
}
- (void)viewDidAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)keyboardWillShow:(NSNotification *)note
{
    CGRect keyboardBounds;
    NSValue *aValue = [note.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey];
    
    [aValue getValue:&keyboardBounds];
    // int keyboardHeight = keyboardBounds.size.height;
    if (!keyboardIsShowing)
    {
        keyboardIsShowing = YES;
        CGRect frame = self.view.frame;
        frame.size.height -= 210;
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationBeginsFromCurrentState:YES];
        [UIView setAnimationDuration:0.3f];
        self.view.frame = frame;
        [UIView commitAnimations];
    }
}

- (void)keyboardWillHide:(NSNotification *)note
{
    CGRect keyboardBounds;
    NSValue *aValue = [note.userInfo valueForKey:UIKeyboardFrameEndUserInfoKey];
    [aValue getValue: &keyboardBounds];
    
    // keyboardHeight = keyboardBounds.size.height;
    if (keyboardIsShowing)
    {
        keyboardIsShowing = NO;
        CGRect frame = self.view.frame;
        frame.size.height += 210;
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationBeginsFromCurrentState:YES];
        [UIView setAnimationDuration:0.3f];
        self.view.frame = frame;
        [UIView commitAnimations];
        
    }
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.txtFieldFullName resignFirstResponder];
    [self.txtFieldMobileNumber resignFirstResponder];
    [self.txtFieldLocation resignFirstResponder];
    [self.txtFieldReferalCode resignFirstResponder];
    return NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
