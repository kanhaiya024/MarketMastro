//
//  CreateAlertVC.h
//  MarketMastro
//
//  Created by Kanhaiya on 27/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateAlertVC : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btnSelectComm;
extern NSString *selctedOption;
@property (weak, nonatomic) IBOutlet UIButton *selectCondition;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldPrice;
@property (strong, nonatomic) IBOutlet UIView *viewForAlertOption;

@end
