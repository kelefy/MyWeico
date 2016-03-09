//
//  HomeViewController.m
//  MyWeico
//
//  Created by kongfanyi on 16/3/9.
//  Copyright © 2016年 kongfanyi. All rights reserved.
//

#import "HomeViewController.h"

@implementation HomeViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = [self uibarButtonItemWithImg:@"navigationbar_friendsearch" hightLighImg:@"navigationbar_friendsearch_highlighted"];
    
    self.navigationItem.rightBarButtonItem = [self uibarButtonItemWithImg:@"navigationbar_pop" hightLighImg:@"navigationbar_pop_highlighted"];
    
}

-(UIBarButtonItem *)uibarButtonItemWithImg:(NSString *)imgName hightLighImg:(NSString *)highImg
{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    [btn setBackgroundImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImg] forState:UIControlStateHighlighted];
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc]init];
    barItem.customView = btn;
    return barItem;
}

@end
