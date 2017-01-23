//
//  LocationViewController.h
//  MarketMastro
//
//  Created by Vodlo iMac 022 on 23/01/17.
//  Copyright © 2017 Macmittal software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
