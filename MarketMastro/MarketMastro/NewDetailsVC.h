//
//  NewDetailsVC.h
//  MarketMastro
//
//  Created by Kanhaiya on 27/11/16.
//  Copyright © 2016 Macmittal software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewDetailsVC : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgVIew;
@property (weak, nonatomic) IBOutlet UILabel *lblOfTitle;
@property (nonatomic, strong) UIImage  *imageLoad;
@property (nonatomic, strong) NSString* titleForString;
@end
