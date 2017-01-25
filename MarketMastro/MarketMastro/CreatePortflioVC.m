//
//  CreatePortflioVC.m
//  MarketMastro
//
//  Created by Kanhaiya on 27/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import "CreatePortflioVC.h"
#import "MarketDetailsVC.h"
#define RGB(r, g, b)                [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]

@interface CreatePortflioVC ()
{
    NSArray *arrOfSearchList;
    NSMutableArray * listOfAllArray;
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
   
    [self MakeDictinoryForListing];
    

    // Do any additional setup after loading the view.
}
- (void)viewDidAppear:(BOOL)animated
{
  
}
-(void)MakeDictinoryForListing
{
    listOfAllArray = [[NSMutableArray alloc] init];
    
    NSDictionary *dict1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Gold",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict1];
    
    NSDictionary *dict2 = [NSDictionary dictionaryWithObjectsAndKeys:@"SILVERMAR",@"title", @"Expected",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict2];
    
    NSDictionary *dict3 = [NSDictionary dictionaryWithObjectsAndKeys:@"GOLDAMFIX",@"title", @"LBMA FIXING",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict3];
    
    NSDictionary *dict4 = [NSDictionary dictionaryWithObjectsAndKeys:@"NTGJANMA17",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict4];
    
    NSDictionary *dict5 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMINI",@"title", @"31 jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict5];
    
    NSDictionary *dict6 = [NSDictionary dictionaryWithObjectsAndKeys:@"XAUUSD",@"title", @"Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict6];
    
    NSDictionary *dict7 = [NSDictionary dictionaryWithObjectsAndKeys:@"Gold",@"title", @"bar 2 Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict7];
    
    NSDictionary *dict8 = [NSDictionary dictionaryWithObjectsAndKeys:@"NATURALGAS",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict8];
    
    NSDictionary *dict9 = [NSDictionary dictionaryWithObjectsAndKeys:@"BRACRUDEOIL",@"title", @"30 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict9];
    
    NSDictionary *dict10 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMINIUM",@"title", @"31 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict10];
    
    NSDictionary *dict11 = [NSDictionary dictionaryWithObjectsAndKeys:@"XAGUSD",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict11];
    
    NSDictionary *dict12 = [NSDictionary dictionaryWithObjectsAndKeys:@"MLGVA",@"title", @"27 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict12];
    
    NSDictionary *dict13 = [NSDictionary dictionaryWithObjectsAndKeys:@"NTGJA",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict13];
    
    NSDictionary *dict14 = [NSDictionary dictionaryWithObjectsAndKeys:@"COTTON",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict14];
    
    NSDictionary *dict15 = [NSDictionary dictionaryWithObjectsAndKeys:@"CPO",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict15];
    
    NSDictionary *dict16 = [NSDictionary dictionaryWithObjectsAndKeys:@"CARDAMOM",@"title", @"15 Jan 2017t",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict16];
    NSDictionary *dict17 = [NSDictionary dictionaryWithObjectsAndKeys:@"CASTORSEED",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict17];
    
    NSDictionary *dict18 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMINI",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict18];
    
    NSDictionary *dict19 = [NSDictionary dictionaryWithObjectsAndKeys:@"MENTHAOIL",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict19];
    
    NSDictionary *dict20 = [NSDictionary dictionaryWithObjectsAndKeys:@"ZINC",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict20];
    
    NSDictionary *dict21 = [NSDictionary dictionaryWithObjectsAndKeys:@"SILVER10",@"title", @"31 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict21];
    
    NSDictionary *dict22 = [NSDictionary dictionaryWithObjectsAndKeys:@"LEAD",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict22];
    
    NSDictionary *dict23 = [NSDictionary dictionaryWithObjectsAndKeys:@"NICKEL",@"title", @"27 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict23];
    
    NSDictionary *dict24 = [NSDictionary dictionaryWithObjectsAndKeys:@"ZINCMINI",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict24];
    
    NSDictionary *dict25 = [NSDictionary dictionaryWithObjectsAndKeys:@"COTTON",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict25];
    
    NSDictionary *dict26 = [NSDictionary dictionaryWithObjectsAndKeys:@"CAP",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict26];
    
    NSDictionary *dict27 = [NSDictionary dictionaryWithObjectsAndKeys:@"CARDQP",@"title", @"15 Jan 2017t",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict27];
    
    NSDictionary *dict28 = [NSDictionary dictionaryWithObjectsAndKeys:@"CASTO12",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict28];
    
    NSDictionary *dict29 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUM100",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict29];
    
    NSDictionary *dict30 = [NSDictionary dictionaryWithObjectsAndKeys:@"MENS",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict30];
    
    NSDictionary *dict31 = [NSDictionary dictionaryWithObjectsAndKeys:@"ZINCS",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict31];
    
    NSDictionary *dict32 = [NSDictionary dictionaryWithObjectsAndKeys:@"SILVERMAR",@"title", @"Expected",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict32];
    
    NSDictionary *dict33 = [NSDictionary dictionaryWithObjectsAndKeys:@"GOLDAMFIX",@"title", @"LBMA FIXING",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict33];
    
    NSDictionary *dict34 = [NSDictionary dictionaryWithObjectsAndKeys:@"NTGJANMA12",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict34];
    
    NSDictionary *dict35 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMINI5",@"title", @"31 jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict35];
    
    NSDictionary *dict36 = [NSDictionary dictionaryWithObjectsAndKeys:@"XUSUSD",@"title", @"Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict36];
    
    NSDictionary *dict37 = [NSDictionary dictionaryWithObjectsAndKeys:@"Gold10",@"title", @"bar 2 Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict37];
    
    NSDictionary *dict38 = [NSDictionary dictionaryWithObjectsAndKeys:@"NATURAL10",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict38];
    
    NSDictionary *dict39 = [NSDictionary dictionaryWithObjectsAndKeys:@"OIL10",@"title", @"30 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict39];
    
    NSDictionary *dict40 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMIS",@"title", @"31 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict40];
    
    NSDictionary *dict41 = [NSDictionary dictionaryWithObjectsAndKeys:@"SILVER10",@"title", @"31 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict41];
    
    NSDictionary *dict42 = [NSDictionary dictionaryWithObjectsAndKeys:@"LEAD",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict42];
    
    NSDictionary *dict43 = [NSDictionary dictionaryWithObjectsAndKeys:@"NICKEL",@"title", @"27 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict43];
    
    NSDictionary *dict44 = [NSDictionary dictionaryWithObjectsAndKeys:@"ZINCMINI",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict44];
    
    NSDictionary *dict45 = [NSDictionary dictionaryWithObjectsAndKeys:@"COTTON",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict45];
    
    NSDictionary *dict46 = [NSDictionary dictionaryWithObjectsAndKeys:@"CAP",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict46];
    
    NSDictionary *dict47 = [NSDictionary dictionaryWithObjectsAndKeys:@"CARDQP",@"title", @"15 Jan 2017t",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict47];
    
    NSDictionary *dict48 = [NSDictionary dictionaryWithObjectsAndKeys:@"CASTO12",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict48];
    
    NSDictionary *dict49 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUM100",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict49];
    
    NSDictionary *dict50 = [NSDictionary dictionaryWithObjectsAndKeys:@"MENS",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict50];
    
    NSDictionary *dict51 = [NSDictionary dictionaryWithObjectsAndKeys:@"QT",@"title", @"15 Jan 2017t",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict51];
    
    NSDictionary *dict52 = [NSDictionary dictionaryWithObjectsAndKeys:@"SILVERMAR",@"title", @"Expected",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict52];
    
    NSDictionary *dict53 = [NSDictionary dictionaryWithObjectsAndKeys:@"GOLDAMFIX",@"title", @"LBMA FIXING",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict53];
    
    NSDictionary *dict54 = [NSDictionary dictionaryWithObjectsAndKeys:@"NTGJANMA17",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict54];
    
    NSDictionary *dict55 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMINI",@"title", @"31 jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict55];
    
    NSDictionary *dict56 = [NSDictionary dictionaryWithObjectsAndKeys:@"XAUUSD",@"title", @"Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict56];
    
    NSDictionary *dict57 = [NSDictionary dictionaryWithObjectsAndKeys:@"Gold",@"title", @"bar 2 Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict57];
    
    NSDictionary *dict58 = [NSDictionary dictionaryWithObjectsAndKeys:@"NATURALGAS",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict58];
    
    NSDictionary *dict59 = [NSDictionary dictionaryWithObjectsAndKeys:@"BRACRUDEOIL",@"title", @"30 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict59];
    
    NSDictionary *dict60 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMINIUM",@"title", @"31 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict60];
    
    NSDictionary *dict61 = [NSDictionary dictionaryWithObjectsAndKeys:@"XAGUSD",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict61];
    
    NSDictionary *dict62 = [NSDictionary dictionaryWithObjectsAndKeys:@"MLGVA",@"title", @"27 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict62];
    
    NSDictionary *dict63 = [NSDictionary dictionaryWithObjectsAndKeys:@"NTGJA",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict63];
    
    NSDictionary *dict64 = [NSDictionary dictionaryWithObjectsAndKeys:@"COTTON",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict64];
    
    NSDictionary *dict65 = [NSDictionary dictionaryWithObjectsAndKeys:@"CPO",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict65];
    
    NSDictionary *dict66 = [NSDictionary dictionaryWithObjectsAndKeys:@"CARDAMOM",@"title", @"15 Jan 2017t",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict66];
    NSDictionary *dict67 = [NSDictionary dictionaryWithObjectsAndKeys:@"CASTORSEED",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict67];
    
    NSDictionary *dict68 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMINI",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict68];
    
    NSDictionary *dict69 = [NSDictionary dictionaryWithObjectsAndKeys:@"MENTHAOIL",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict69];
    
    NSDictionary *dict70 = [NSDictionary dictionaryWithObjectsAndKeys:@"ZINC",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict70];
    
    NSDictionary *dict71 = [NSDictionary dictionaryWithObjectsAndKeys:@"SILVER10",@"title", @"31 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict71];
    
    NSDictionary *dict72 = [NSDictionary dictionaryWithObjectsAndKeys:@"LEAD",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict72];
    
    NSDictionary *dict73 = [NSDictionary dictionaryWithObjectsAndKeys:@"NICKEL",@"title", @"27 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict73];
    
    NSDictionary *dict74 = [NSDictionary dictionaryWithObjectsAndKeys:@"ZINCMINI",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict74];
    
    NSDictionary *dict75 = [NSDictionary dictionaryWithObjectsAndKeys:@"COTTON",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict75];
    
    NSDictionary *dict76 = [NSDictionary dictionaryWithObjectsAndKeys:@"CAP",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict76];
    
    NSDictionary *dict77 = [NSDictionary dictionaryWithObjectsAndKeys:@"CARDQP",@"title", @"15 Jan 2017t",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict77];
    
    NSDictionary *dict78 = [NSDictionary dictionaryWithObjectsAndKeys:@"CASTO12",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict78];
    
    NSDictionary *dict79 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMY",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict79];
    
    NSDictionary *dict80 = [NSDictionary dictionaryWithObjectsAndKeys:@"MENX",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict80];
    
    NSDictionary *dict81 = [NSDictionary dictionaryWithObjectsAndKeys:@"ZINCW",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict81];
    
    NSDictionary *dict82 = [NSDictionary dictionaryWithObjectsAndKeys:@"SILVERMAR",@"title", @"Expected",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict82];
    
    NSDictionary *dict83 = [NSDictionary dictionaryWithObjectsAndKeys:@"GOLDAMFIX",@"title", @"LBMA FIXING",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict83];
    
    NSDictionary *dict84 = [NSDictionary dictionaryWithObjectsAndKeys:@"NTGJANMA12",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict84];
    
    NSDictionary *dict85 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMINIJ",@"title", @"31 jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict85];
    
    NSDictionary *dict86 = [NSDictionary dictionaryWithObjectsAndKeys:@"XUSUSDQ",@"title", @"Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict86];
    
    NSDictionary *dict87 = [NSDictionary dictionaryWithObjectsAndKeys:@"Gold10PU",@"title", @"bar 2 Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict87];
    
    NSDictionary *dict88 = [NSDictionary dictionaryWithObjectsAndKeys:@"NATURAL10",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict88];
    
    NSDictionary *dict89 = [NSDictionary dictionaryWithObjectsAndKeys:@"OIL10",@"title", @"30 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict89];
    
    NSDictionary *dict90 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMIS",@"title", @"31 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict90];
    
    NSDictionary *dict91 = [NSDictionary dictionaryWithObjectsAndKeys:@"SILVER10",@"title", @"31 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict91];
    
    NSDictionary *dict92 = [NSDictionary dictionaryWithObjectsAndKeys:@"LEH",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict92];
    
    NSDictionary *dict93 = [NSDictionary dictionaryWithObjectsAndKeys:@"NICKEG",@"title", @"27 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict93];
    
    NSDictionary *dict94 = [NSDictionary dictionaryWithObjectsAndKeys:@"ZINCMINIF",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict94];
    
    NSDictionary *dict95 = [NSDictionary dictionaryWithObjectsAndKeys:@"COTTONE",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict95];
    
    NSDictionary *dict96 = [NSDictionary dictionaryWithObjectsAndKeys:@"CAD",@"title", @"25 Jan 2017",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict96];
    
    NSDictionary *dict97 = [NSDictionary dictionaryWithObjectsAndKeys:@"CARDQP",@"title", @"15 Jan 2017t",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict97];
    
    NSDictionary *dict98 = [NSDictionary dictionaryWithObjectsAndKeys:@"CAS0O12",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict98];
    
    NSDictionary *dict99 = [NSDictionary dictionaryWithObjectsAndKeys:@"ALUMS100",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict99];
    
    NSDictionary *dict100 = [NSDictionary dictionaryWithObjectsAndKeys:@"MEKS",@"title", @"bar Spot",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict100];
    
    NSDictionary *dict101 = [NSDictionary dictionaryWithObjectsAndKeys:@"QBT",@"title", @"15 Jan 2017t",@"subtitle",@"0",@"selected",nil];
    [listOfAllArray addObject:dict101];
    
}
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
        else if(_isSearchOption)
        {
            MarketDetailsVC *marketDetailsVC = [self.storyboard instantiateViewControllerWithIdentifier:@"MarketDetailsVC"];
            [self.navigationController pushViewController:marketDetailsVC animated:YES];
        }
    }
}
- (IBAction)searchCommTxt:(UITextField*)txtField {
    if([txtField.text length] > 0)
    {
        self.collectionViewSearch.frame = self.scrollViewWS.frame;
        if(_isSearchOption)
        {
            self.btnSave.hidden = YES;
            self.collectionViewSearch.frame = CGRectMake(self.collectionViewSearch.frame.origin.x, self.collectionViewSearch.frame.origin.y, self.collectionViewSearch.frame.size.width, SCREEN_HEIGHT -  (IS_IPAD?394:278));
        }
        [self.view addSubview:self.collectionViewSearch];
        self.scrollViewWS.hidden = YES;
        [self.collectionViewSearch reloadData];
        
        NSPredicate *aPredicate = [NSPredicate predicateWithFormat:@"title contains[cd] %@  OR subtitle contains[cd] %@",self.txtFieldForSearch.text,self.txtFieldForSearch.text];
        arrOfSearchList = [listOfAllArray filteredArrayUsingPredicate:aPredicate];
        [self.collectionViewSearch reloadData];
    }
    else{
        self.scrollViewWS.hidden = NO;
        arrOfSearchList = [listOfAllArray copy];
        [self.collectionViewSearch reloadData];
        [self.collectionViewSearch removeFromSuperview];
     
    }
}
#pragma mark - Collectionview Delegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [arrOfSearchList count];//[arrOfDefaultCollctionList count];
}
-(CGSize)collectionView:(UICollectionView *)collectionView
layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath

{
    if(IS_IPHONE_5 ||IS_IPHONE_4_OR_LESS)
    {
        return CGSizeMake(97, 46);
    }
    else if(IS_IPHONE_6)
    {
        return CGSizeMake(115, 46);
    }
    else if(IS_IPAD)
    {
        return CGSizeMake(123, 54);
    }
    return CGSizeMake(97, 46);

//    else if(IS_IPHONE_6)
//    {
//        return CGSizeMake(115, 50);
//    }
//    else if(IS_IPHONE_6P)
//    {
//        return CGSizeMake(115, 50);
//    }
//    return CGSizeMake(115, 50);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell;
    
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UIButton *btn = (UIButton *)[cell viewWithTag:1];
    UILabel *lbl = (UILabel *)[cell viewWithTag:2];

    btn.layer.borderColor = RGB(0, 122, 255).CGColor;
    btn.layer.borderWidth = 1;
    [btn setTitle:arrOfSearchList[indexPath.row][@"title"] forState:UIControlStateNormal];
    lbl.text = arrOfSearchList[indexPath.row][@"subtitle"];
    if(IS_IPAD)
    {
        btn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        lbl.font = [UIFont systemFontOfSize:15];
    }
  
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
