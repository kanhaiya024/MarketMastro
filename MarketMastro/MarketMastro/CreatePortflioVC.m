//
//  CreatePortflioVC.m
//  MarketMastro
//
//  Created by Kanhaiya on 27/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "CreatePortflioVC.h"
#define RGB(r, g, b)                [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]

@interface CreatePortflioVC ()
{
    NSArray *arrOfDefaultCollctionList;
}
@end

@implementation CreatePortflioVC

- (void)viewDidLoad {
    selctedOption = @"";
    selctedOptionMarket = @"";

    self.title = @"Create Commodities";
    [super viewDidLoad];
    _btn1.layer.borderColor = RGB(0, 122, 255).CGColor;
    _btn1.layer.borderWidth = 1;
    
    _btn1.layer.borderColor = RGB(0, 122, 255).CGColor;
    _btn1.layer.borderWidth = 1;

    
    _btn2.layer.borderColor = RGB(0, 122, 255).CGColor;
    _btn2.layer.borderWidth = 1;

    
    _btn3.layer.borderColor = RGB(0, 122, 255).CGColor;
    _btn3.layer.borderWidth = 1;

    
    _btn4.layer.borderColor = RGB(0, 122, 255).CGColor;
    _btn4.layer.borderWidth = 1;

    
    _btn5.layer.borderColor = RGB(0, 122, 255).CGColor;
    _btn5.layer.borderWidth = 1;

    
    _btn6.layer.borderColor = RGB(0, 122, 255).CGColor;
    _btn6.layer.borderWidth = 1;

    
    _btn7.layer.borderColor = RGB(0, 122, 255).CGColor;
    _btn7.layer.borderWidth = 1;

    
    _btn8.layer.borderColor = RGB(0, 122, 255).CGColor;
    _btn8.layer.borderWidth = 1;
    if(_isCreateAlert)
    {
        self.btnSave.hidden = YES;
    }
    

    // Do any additional setup after loading the view.
}
-(void)MakeDictinory
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)btnClick:(id)sender
{
    UIButton *btn = (UIButton*)sender;
    if(btn.selected)
    {
        btn.selected = NO;
    }
    else{
         btn.selected = YES;
        if(_isCreateAlert)
        {
            selctedOption = btn.currentTitle;
            selctedOptionMarket = btn.currentTitle;

            [self.navigationController popViewControllerAnimated:YES];
        }
    }
}
- (IBAction)searchCommTxt:(UITextField*)txtField {
    if([txtField.text length] > 0)
    {
        self.collectionViewSearch.frame = self.scrollViewWS.frame;
        [self.view addSubview:self.collectionViewSearch];
        self.scrollViewWS.hidden = YES;
        [self.collectionViewSearch reloadData];
    }
    else{
        self.scrollViewWS.hidden = NO;
        [self.collectionViewSearch removeFromSuperview];
    }
}
#pragma mark - Collectionview Delegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;//[arrOfDefaultCollctionList count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell;
    
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UIButton *btn = (UIButton *)[cell viewWithTag:1];
    btn.layer.borderColor = RGB(0, 122, 255).CGColor;
    btn.layer.borderWidth = 1;
//    [btn setTitle:arrOfDefaultCollctionList[indexPath.row][@"title"] forState:UIControlStateNormal];
  
    return cell;
}

-(IBAction)goBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)btnTapOnSearchResults:(id)sender {
    UIButton *btn = (UIButton*)sender;
    btn.selected = YES;
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
