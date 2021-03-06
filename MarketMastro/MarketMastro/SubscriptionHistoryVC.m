//
//  SubscriptionHistoryVC.m
//  MarketMastro
//
//  Created by Vodlo iMac 022 on 22/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "SubscriptionHistoryVC.h"
#import "OrderDetailsVC.h"
@interface SubscriptionHistoryVC ()
{
    NSArray *menuItems;

}
@end

@implementation SubscriptionHistoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    menuItems = @[@"market",@"market2"];
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:13/255.0 green:16/255.0 blue:20/255.0 alpha:1.0]];
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];


    // Do any additional setup after loading the view.
}
-(IBAction)goBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return menuItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    OrderDetailsVC *upgradeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"OrderDetailsVC"];
    [self.navigationController pushViewController:upgradeVC animated:YES];
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
