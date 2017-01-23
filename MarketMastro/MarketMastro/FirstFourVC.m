//
//  FirstFourVC.m
//  MarketMastro
//
//  Created by Kanhaiya on 27/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "FirstFourVC.h"
#import "SWRevealViewController.h"
#import "CalendarDetailsVC.h"
#import "NewDetailsVC.h"
#import "AlertViewController.h"
#import "LocationViewController.h"
@interface FirstFourVC ()
{
    NSArray *menuItems;
    NSArray *arrOfCollctionList;
    int selectedIndexCollection;
    UIButton *previousBtn;

}
@end

@implementation FirstFourVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableViewForMarket7.hidden = YES;

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(locationUpdate:) name:@"CityLocationUpdate" object:nil];
    [self reloadView];
    selectedIndexCollection = 0;
    self.scrollViewForMarket.contentSize = CGSizeMake((SCREEN_WIDTH)*8, 0);
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:13/255.0 green:16/255.0 blue:20/255.0 alpha:1.0]];
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];

    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    self.tableViewForMarket.frame = CGRectMake(5, self.tableViewForMarket.frame.origin.y, self.tableViewForMarket.frame.size.width, self.tableViewForMarket.frame.size.height);

    self.tableViewForMarket2.frame = CGRectMake(SCREEN_WIDTH+5, self.tableViewForMarket2.frame.origin.y, self.tableViewForMarket2.frame.size.width, self.tableViewForMarket2.frame.size.height);
     self.tableViewForMarket3.frame = CGRectMake((SCREEN_WIDTH *2)+10, self.tableViewForMarket3.frame.origin.y, self.tableViewForMarket3.frame.size.width, self.tableViewForMarket3.frame.size.height);
     self.tableViewForMarket4.frame = CGRectMake((SCREEN_WIDTH *3)+10, self.tableViewForMarket4.frame.origin.y, self.tableViewForMarket4.frame.size.width, self.tableViewForMarket4.frame.size.height);
     self.tableViewForMarket5.frame = CGRectMake((SCREEN_WIDTH *4)+10, self.tableViewForMarket5.frame.origin.y, self.tableViewForMarket5.frame.size.width, self.tableViewForMarket5.frame.size.height);
    self.tableViewForMarket6.frame = CGRectMake((SCREEN_WIDTH *5)+10, self.tableViewForMarket6.frame.origin.y, self.tableViewForMarket6.frame.size.width, self.tableViewForMarket6.frame.size.height);
    
     self.tableViewForMarket7.frame = CGRectMake((SCREEN_WIDTH *6)+10, self.tableViewForMarket7.frame.origin.y, self.tableViewForMarket7.frame.size.width, self.tableViewForMarket7.frame.size.height);
     self.tableViewForMarket8.frame = CGRectMake((SCREEN_WIDTH *7)+5, self.tableViewForMarket8.frame.origin.y, self.tableViewForMarket8.frame.size.width, self.tableViewForMarket8.frame.size.height);
    menuItems = @[@"market",@"market1",@"market2",@"market3",@"market4",@"market5",@"market6"];
    
    arrOfCollctionList = @[@"Agri",@"Costing & Difference",@"Expected MCX",@"Bullion",@"Base Metals",@"Energy",@"Local Spot",@"International"];
    [_collectionView reloadData];

    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:13/255.0 green:16/255.0 blue:20/255.0 alpha:1.0]];
    
    // Do any additional setup after loading the view.
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
//    UIBarButtonItem *btnShare = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(share)];
    
//    UIBarButtonItem *btnRefresh = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(alertListBtnClick:)];
//    [btnRefresh setBackgroundImage:<#(nullable UIImage *)#> forState:<#(UIControlState)#> style:<#(UIBarButtonItemStyle)#> barMetrics:<#(UIBarMetrics)#>]

    /* Title
     ICON Search City
     
     Mumbai
     Pune
     Ahmedbad
     Rajkot
     Hyderabad
     Vijaywada
     Nellore
     Vizag
     Warangal
     Other
     
     
     Gold Bar
     intellect
     
     
     MLGGOLD999
     MAHALAKSMI G 239351.00 29406.09
     */
    

   
    /*
    UIButton *settingsBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 21, 21)];
    [settingsBtn addTarget:self action:@selector(SettingsClicked) forControlEvents:UIControlEventTouchUpInside];
    [settingsBtn setBackgroundImage:[UIImage imageNamed:@"act_addcommodities_ico"] forState:UIControlStateNormal];
    
    
    UIButton *settingsBtn2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 21, 21)];
    [settingsBtn2 addTarget:self action:@selector(alertListBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [settingsBtn2 setBackgroundImage:[UIImage imageNamed:@"act_alert_ico"] forState:UIControlStateNormal];

    UIBarButtonItem *settingsButton1 = [[UIBarButtonItem alloc] initWithCustomView:settingsBtn];

    UIBarButtonItem *settingsButton2 = [[UIBarButtonItem alloc] initWithCustomView:settingsBtn2];

    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:settingsButton1, settingsButton2, nil]];

    */
    
//    UIBarButtonItem *settingsButton = [[UIBarButtonItem alloc] initWithCustomView:settingsView];

    
    // Do any additional setup after loading the view.
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    if(self.tableViewForNews == tableView)
    {
        return menuItems.count;
    }
    else {
        return 15;
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    if(tableView == self.tableViewForNews)
    {
        NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        cell.backgroundColor = [UIColor clearColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor clearColor];
    }
    else
    {
        NSString *CellIdentifier = @"market";
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        cell.backgroundColor = [UIColor clearColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor clearColor];
    }
   
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(tableView == self.tableViewForNews)
    {
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];

        UILabel *label = (UILabel*)[cell viewWithTag:21];
        UIImageView *imgView = (UIImageView*)[cell viewWithTag:20];
        
        NewDetailsVC *calendarVC = [self.storyboard instantiateViewControllerWithIdentifier:@"NewDetailsVC"];
        calendarVC.titleForString = label.text;
        calendarVC.imageLoad = imgView.image;
        [self.navigationController pushViewController:calendarVC animated:YES];
    }
    else   if(tableView == self.tableViewForCalendar)
    {
        CalendarDetailsVC *calendarVC = [self.storyboard instantiateViewControllerWithIdentifier:@"CalendarDetailsVC"];
        [self.navigationController pushViewController:calendarVC animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)reloadView
{
    UIButton *btnMarket = (UIButton*)[self.view viewWithTag:10];
    UIButton *btnPortfolio = (UIButton*)[self.view viewWithTag:11];
    UIButton *btnNews = (UIButton*)[self.view viewWithTag:12];
    UIButton *btnCalendar = (UIButton*)[self.view viewWithTag:13];

    if(indexOfDrawer == 0)
    {
        self.title = @"Market Mastro";
        btnMarket.selected = YES;
        btnPortfolio.selected = NO;
        btnNews.selected = NO;
        btnCalendar.selected = NO;
        [self.viewForNews removeFromSuperview];
        [self.viewForCalendar removeFromSuperview];
        [self.viewForPortflio removeFromSuperview];
        self.viewForMarket.frame = CGRectMake(0, 135,SCREEN_WIDTH, SCREEN_HEIGHT-135);
        [self.view addSubview:self.viewForMarket];
//        [self.tableViewForCalendar reloadData];


    }
    else if(indexOfDrawer == 1)
    {
        self.title = @"Market Portfolio";
        btnMarket.selected = NO;
        btnPortfolio.selected = YES;
        btnNews.selected = NO;
        btnCalendar.selected = NO;
        [self.viewForNews removeFromSuperview];
        [self.viewForCalendar removeFromSuperview];
        [self.viewForMarket removeFromSuperview];
        self.viewForPortflio.frame = CGRectMake(0, 135,SCREEN_WIDTH, SCREEN_HEIGHT-135);
        [self.view addSubview:self.viewForPortflio];



    }
    else if(indexOfDrawer == 2)
    {
        self.title = @"News";
        btnMarket.selected = NO;
        btnPortfolio.selected = NO;
        btnNews.selected = YES;
        btnCalendar.selected = NO;
        [self.viewForMarket removeFromSuperview];
        [self.viewForNews removeFromSuperview];

        [self.viewForCalendar removeFromSuperview];
        self.viewForNews.frame = CGRectMake(0, 135,SCREEN_WIDTH, SCREEN_HEIGHT-135);
        [self.view addSubview:self.viewForNews];
        [self.tableViewForNews reloadData];


    }
    else if(indexOfDrawer == 3)
    {
        self.title = @"Calendar";
        btnMarket.selected = NO;
        btnPortfolio.selected = NO;
        btnNews.selected = NO;
        btnCalendar.selected = YES;
        [self.viewForNews removeFromSuperview];
        self.viewForCalendar.frame = CGRectMake(0, 135,SCREEN_WIDTH, SCREEN_HEIGHT-135);
        [self.view addSubview:self.viewForCalendar];
        [self.tableViewForCalendar reloadData];


    }
}

-(IBAction)optionBtnClick:(id)sender
{
    UIButton *btn = (UIButton*)sender;
    UIButton *btnMarket = (UIButton*)[self.view viewWithTag:10];
    UIButton *btnPortfolio = (UIButton*)[self.view viewWithTag:11];
    UIButton *btnNews = (UIButton*)[self.view viewWithTag:12];
    UIButton *btnCalendar = (UIButton*)[self.view viewWithTag:13];
    if(btn == btnMarket)
    {
        self.title = @"Market Mastro";

        btnMarket.selected = YES;
        btnPortfolio.selected = NO;
        btnNews.selected = NO;
        btnCalendar.selected = NO;
        [self.viewForNews removeFromSuperview];
        [self.viewForCalendar removeFromSuperview];
        [self.viewForPortflio removeFromSuperview];
        self.viewForMarket.frame = CGRectMake(0, 135,SCREEN_WIDTH, SCREEN_HEIGHT-135);
        [self.view addSubview:self.viewForMarket];
        [self.tableViewForMarket reloadData];

        
    }
    else if(btn == btnPortfolio)
    {
        self.title = @"Market Portfolio";

        btnMarket.selected = NO;
        btnPortfolio.selected = YES;
        btnNews.selected = NO;
        btnCalendar.selected = NO;
        [self.viewForPortflio removeFromSuperview];
        self.viewForMarket.frame = CGRectMake(0, 135,SCREEN_WIDTH, SCREEN_HEIGHT-135);
        [self.view addSubview:self.viewForMarket];

        [self.viewForNews removeFromSuperview];
        [self.viewForCalendar removeFromSuperview];
        [self.viewForMarket removeFromSuperview];
        self.viewForPortflio.frame = CGRectMake(0, 135,SCREEN_WIDTH, SCREEN_HEIGHT-135);
        [self.view addSubview:self.viewForPortflio];
    }
    else if(btn == btnNews)
    {
        self.title = @"News";

        btnMarket.selected = NO;
        btnPortfolio.selected = NO;
        btnNews.selected = YES;
        btnCalendar.selected = NO;
        [self.viewForCalendar removeFromSuperview];
        self.viewForNews.frame = CGRectMake(0, 135,SCREEN_WIDTH, SCREEN_HEIGHT-135);
        [self.view addSubview:self.viewForNews];
        [self.tableViewForNews reloadData];
        [self.viewForMarket removeFromSuperview];
        [self.viewForPortflio removeFromSuperview];


    }
    else if(btn == btnCalendar)
    {
        btnMarket.selected = NO;
        btnPortfolio.selected = NO;
        btnNews.selected = NO;
        btnCalendar.selected = YES;
        [self.viewForNews removeFromSuperview];
        self.viewForCalendar.frame = CGRectMake(0, 135,SCREEN_WIDTH, SCREEN_HEIGHT-135);
        [self.view addSubview:self.viewForCalendar];
        self.title = @"Calendar";
        btnMarket.selected = NO;
        btnPortfolio.selected = NO;
        btnNews.selected = NO;
        btnCalendar.selected = YES;
        [self.viewForMarket removeFromSuperview];
        [self.viewForPortflio removeFromSuperview];
        [self.tableViewForCalendar reloadData];
    }
}
- (IBAction)btnClickOnCalendarDays:(id)sender {
    {
        UIButton *btn = (UIButton*)sender;
        UIButton *btnMarket = (UIButton*)[self.view viewWithTag:110];
        UIButton *btnPortfolio = (UIButton*)[self.view viewWithTag:111];
        UIButton *btnNews = (UIButton*)[self.view viewWithTag:112];
        UIButton *btnCalendar = (UIButton*)[self.view viewWithTag:113];
        if(btn == btnMarket)
        {
            btnMarket.selected = YES;
            btnPortfolio.selected = NO;
            btnNews.selected = NO;
            btnCalendar.selected = NO;
        }
        else if(btn == btnPortfolio)
        {
            btnMarket.selected = NO;
            btnPortfolio.selected = YES;
            btnNews.selected = NO;
            btnCalendar.selected = NO;
        }
        else if(btn == btnNews)
        {
            btnMarket.selected = NO;
            btnPortfolio.selected = NO;
            btnNews.selected = YES;
            btnCalendar.selected = NO;
        }
        else if(btn == btnCalendar)
        {
            btnMarket.selected = NO;
            btnPortfolio.selected = NO;
            btnNews.selected = NO;
            btnCalendar.selected = YES;
        }
    }
}

-(IBAction)alertListBtnClick:(id)sender
{
    AlertViewController *calendarVC = [self.storyboard instantiateViewControllerWithIdentifier:@"AlertViewController"];
    calendarVC.is_NotFromDraw = YES;

    [self.navigationController pushViewController:calendarVC animated:YES];

}

#pragma mark - Collectionview Delegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [arrOfCollctionList count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell;
    
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    UIButton *btn = (UIButton *)[cell viewWithTag:1];
    [btn setTitle:arrOfCollctionList[indexPath.row] forState:UIControlStateNormal];
    if(indexPath.row == selectedIndexCollection)
    {
        btn.selected = YES;
        previousBtn = btn;
    }
    else{
        btn.selected = NO;
    }
    return cell;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger pagenumber = scrollView.contentOffset.x / scrollView.bounds.size.width;
    UICollectionViewCell *cell = [self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForRow:pagenumber inSection:0]];
    UIButton *btn = (UIButton *)[cell viewWithTag:1];
    btn.selected = YES;

}
- (IBAction)btnSelectOnMarketOption:(UIButton *)sender{
    NSIndexPath *indexPath = nil;
    previousBtn.selected = NO;
//    previousBtn = nil;
    indexPath = [self.collectionView indexPathForItemAtPoint:[self.collectionView convertPoint:sender.center fromView:sender.superview]];
    selectedIndexCollection = (int)indexPath.row;
    
    [self.scrollViewForMarket setContentOffset:CGPointMake(indexPath.row*SCREEN_WIDTH, 0) animated:YES];
    sender.selected = YES;
    previousBtn = sender;

//    [self.collectionView reloadData];

}
-(void)locationUpdate:(NSNotification*)sender
{
    NSDictionary *dict = [sender userInfo];
    [self.btnCityTitle setTitle: [NSString stringWithFormat:@"            %@",[dict objectForKey:@"Location"]] forState:UIControlStateNormal];
    self.tableViewForMarket7.hidden = NO;
    [self.tableViewForMarket7 reloadData];
}
- (IBAction)locationBtnClick:(id)sender {
    LocationViewController *calendarVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LocationViewController"];
    [self.navigationController pushViewController:calendarVC animated:YES];

    
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
