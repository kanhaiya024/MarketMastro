//
//  LocationViewController.m
//  MarketMastro
//
//  Created by Vodlo iMac 022 on 23/01/17.
//  Copyright © 2017 Macmittal software. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()
{
    NSArray *cityList;
    NSMutableArray *defaultCityList;
}
@end

@implementation LocationViewController

- (void)viewDidLoad {
    self.title= @"Select City";
    [super viewDidLoad];
    defaultCityList = [NSMutableArray arrayWithObjects:@"Mumbai",@"Pune",@"Ahmedabad",@"Rajkot",@"Hyderabad",@"Vijaywada",@"Nellore",@"Vizag",@"Warangal",@"Other", nil];
    [self.tableView reloadData];
    cityList = [defaultCityList copy];
    [self.tableView reloadData];
    [self.txtFieldSearch addTarget:self action:@selector(searchCityTxt:) forControlEvents:UIControlEventEditingChanged];
    
    // Do any additional setup after loading the view.
}
-(IBAction)goBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)searchCityTxt:(UITextField*)textField
{
    if([textField.text length] > 0)
    {
        NSPredicate *aPredicate = [NSPredicate predicateWithFormat:@"SELF contains[cd] %@",self.txtFieldSearch.text];
        cityList = [defaultCityList filteredArrayUsingPredicate:aPredicate];
    }
    else
    {
        cityList = [defaultCityList copy];
    }
    [self.tableView reloadData];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return cityList.count;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = @"market";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    UILabel *label = (UILabel*)[cell viewWithTag:1];
    label.text = [cityList objectAtIndex:indexPath.row];
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[cityList objectAtIndex:indexPath.row] forKey:@"Location"];
    [[NSNotificationCenter defaultCenter]postNotificationName:@"CityLocationUpdate" object:nil userInfo:dictionary];
    [self.navigationController popViewControllerAnimated:YES];
    
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
