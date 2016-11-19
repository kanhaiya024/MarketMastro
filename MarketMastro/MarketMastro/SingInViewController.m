//
//  SingInViewController.m
//  MarketMastro
//
//  Created by Mac on 13/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "SingInViewController.h"

@interface SingInViewController ()

@end

@implementation SingInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.txtFieldMobileNumber = [self borderColor:self.txtFieldMobileNumber withMask:YES];
    self.txtFieldMobileNumber = [self placeHolderColor:self.txtFieldMobileNumber withSting:@"Enter your registered Mobile No."];
    self.txtFieldMobileNumber.leftView =[self paddingView:self.txtFieldMobileNumber withImageNamed:@"reg_mobile_icon.png"];
    self.btnContinue.layer.cornerRadius = 3.0f; // this value vary as per your desire
    self.btnContinue.clipsToBounds = YES;
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
    UIColor *color = [UIColor colorWithRed:154/255.0 green:154/255.0 blue:154/255.0 alpha:1.0];
    txt.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeHolderString attributes:@{NSForegroundColorAttributeName: color}];
    return txt;
}
- (UITextField *)borderColor:(UITextField*)txt withMask:(BOOL)maskValue {
    txt.layer.borderColor=[[UIColor darkTextColor]CGColor];
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
//- (void)viewDidAppear:(BOOL)animated
//{
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
//}
//
//- (void)keyboardWillShow:(NSNotification *)note
//{
//    CGRect keyboardBounds;
//    NSValue *aValue = [note.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey];
//    
//    [aValue getValue:&keyboardBounds];
//    // int keyboardHeight = keyboardBounds.size.height;
//    if (!keyboardIsShowing)
//    {
//        keyboardIsShowing = YES;
//        CGRect frame = self.view.frame;
//        frame.size.height -= 210;
//        
//        [UIView beginAnimations:nil context:NULL];
//        [UIView setAnimationBeginsFromCurrentState:YES];
//        [UIView setAnimationDuration:0.3f];
//        self.view.frame = frame;
//        [UIView commitAnimations];
//    }
//}
//
//- (void)keyboardWillHide:(NSNotification *)note
//{
//    CGRect keyboardBounds;
//    NSValue *aValue = [note.userInfo valueForKey:UIKeyboardFrameEndUserInfoKey];
//    [aValue getValue: &keyboardBounds];
//    
//    // keyboardHeight = keyboardBounds.size.height;
//    if (keyboardIsShowing)
//    {
//        keyboardIsShowing = NO;
//        CGRect frame = self.view.frame;
//        frame.size.height += 210;
//        
//        [UIView beginAnimations:nil context:NULL];
//        [UIView setAnimationBeginsFromCurrentState:YES];
//        [UIView setAnimationDuration:0.3f];
//        self.view.frame = frame;
//        [UIView commitAnimations];
//        
//    }
//}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{

    [self.txtFieldMobileNumber resignFirstResponder];
    
    return NO;
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
