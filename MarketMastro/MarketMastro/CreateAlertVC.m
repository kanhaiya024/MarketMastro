//
//  CreateAlertVC.m
//  MarketMastro
//
//  Created by Kanhaiya on 27/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "CreateAlertVC.h"
#import "CreatePortflioVC.h"
@interface CreateAlertVC ()

@end

@implementation CreateAlertVC
NSString *selctedOption;

- (void)viewDidLoad {
    [super viewDidLoad];
    selctedOption = @"";
    self.title = @"Set Alert";
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
    if([selctedOption length] > 0)
    {
        [_btnSelectComm setTitle:[NSString stringWithFormat:@"  %@",selctedOption] forState:UIControlStateNormal];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)goBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)selectCommoditeBtnClick:(id)sender {
    if([selctedOption length] > 0)
    {
        [_selectCondition setTitle:[NSString stringWithFormat:@"  %@",selctedOption] forState:UIControlStateNormal];
    }
    CreatePortflioVC *createAlert = [self.storyboard instantiateViewControllerWithIdentifier:@"CreatePortflioVC"];
    createAlert.isCreateAlert = YES;
    [self.navigationController pushViewController:createAlert animated:YES];
}
- (IBAction)btnSelectConditionBtnClick:(id)sender {
    self.viewForAlertOption.frame =  self.view.frame;
    [self.view addSubview:self.viewForAlertOption];
}
- (IBAction)setAlertBtnClick:(id)sender {
    //  Select Commodity
    if([self.btnSelectComm.currentTitle isEqualToString:@"  Select Commodity"])
    {
        [[[UIAlertView alloc] initWithTitle:@"" message:@"Please select Commodity." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        return;

    }
    if([_selectCondition.currentTitle isEqualToString:@"  Select Condition"])
    {
        [[[UIAlertView alloc] initWithTitle:@"" message:@"Please Select Condition." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        return;
    }
    if([self.txtFieldPrice.text length] == 0)
    {
        [[[UIAlertView alloc] initWithTitle:@"" message:@"Please enter Price value." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        return;
    }
  

    if([self.txtFieldPrice.text length] > 0)
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
///  Select Condition
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}
-(IBAction)optionSelectBtnClick:(id)sender{
    UIButton *btn = (UIButton*)sender;
    [_selectCondition setTitle:[NSString stringWithFormat:@"  %@",btn.currentTitle] forState:UIControlStateNormal];
    [self.viewForAlertOption removeFromSuperview];
    
}
- (IBAction)btnForDismiss:(id)sender {
    [self.viewForAlertOption removeFromSuperview];

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
