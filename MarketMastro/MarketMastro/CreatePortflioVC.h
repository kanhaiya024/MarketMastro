//
//  CreatePortflioVC.h
//  MarketMastro
//
//  Created by Kanhaiya on 27/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateAlertVC.h"
#import "MarketCreateAlertVC.h"
#import "AppDelegate.h"
@interface CreatePortflioVC : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
@property (weak, nonatomic) IBOutlet UIButton *btn6;
@property (weak, nonatomic) IBOutlet UIButton *btn7;
@property (weak, nonatomic) IBOutlet UIButton *btn8;
@property (weak, nonatomic) IBOutlet UIButton *btnSave;
@property (nonatomic) BOOL isCreateAlert;
@property (nonatomic) BOOL isSearchOption;

@property (strong, nonatomic) IBOutlet UICollectionView *collectionViewSearch;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollViewWS;
@property (strong, nonatomic) IBOutlet UITextField *txtFieldForSearch;


@end
