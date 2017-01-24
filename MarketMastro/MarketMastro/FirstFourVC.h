//
//  FirstFourVC.h
//  MarketMastro
//
//  Created by Kanhaiya on 27/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface FirstFourVC : UIViewController<UITableViewDelegate,UICollectionViewDelegate,UICollectionViewDataSource,UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIView *viewForNews;
@property (weak, nonatomic) IBOutlet UIView *viewForPortflio;
@property (weak, nonatomic) IBOutlet UIView *viewForCalendar;
@property (weak, nonatomic) IBOutlet UIView *viewForMarket;

@property (nonatomic, strong) IBOutlet UITableView * tableViewForNews;
@property (nonatomic, strong) IBOutlet UITableView * tableViewForCalendar;
@property (nonatomic, strong) IBOutlet UITableView * tableViewForPortfolio;
@property (nonatomic, strong) IBOutlet UITableView * tableViewForMarket;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) IBOutlet UITableView * tableViewForMarket2;
@property (nonatomic, strong) IBOutlet UITableView * tableViewForMarket3;
@property (nonatomic, strong) IBOutlet UITableView * tableViewForMarket4;
@property (nonatomic, strong) IBOutlet UITableView * tableViewForMarket5;
@property (nonatomic, strong) IBOutlet UITableView * tableViewForMarket6;
@property (nonatomic, strong) IBOutlet UITableView * tableViewForMarket7;
@property (nonatomic, strong) IBOutlet UITableView * tableViewForMarket8;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollViewForMarket;
@property (strong, nonatomic) IBOutlet UIButton *btnCityTitle;
@property (weak, nonatomic) IBOutlet UIView *viewForMarket7;


@end
