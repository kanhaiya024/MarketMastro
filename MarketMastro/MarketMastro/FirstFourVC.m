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
@interface FirstFourVC ()
{
    NSArray *menuItems;
}
@end

@implementation FirstFourVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reloadView];
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    menuItems = @[@"market",@"market1",@"market2",@"market3",@"market4",@"market5",@"market6"];
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:13/255.0 green:16/255.0 blue:20/255.0 alpha:1.0]];
    
    // Do any additional setup after loading the view.
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
