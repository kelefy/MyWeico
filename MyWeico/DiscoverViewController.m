//
//  DiscoverViewController.m
//  MyWeico
//
//  Created by kongfanyi on 16/3/9.
//  Copyright © 2016年 kongfanyi. All rights reserved.
//

#import "DiscoverViewController.h"

@implementation DiscoverViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UITextField *textfield = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width-10, 30)];
    [textfield setBackground:[UIImage imageNamed:@"searchbar_textfield_background"]];
    
    UIImageView *imv = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    [imv setImage:[UIImage imageNamed:@"searchbar_textfield_search_icon"]];
    textfield.leftView = imv;
    imv.contentMode = UIViewContentModeCenter;
    textfield.leftViewMode = UITextFieldViewModeAlways;
    
    textfield.placeholder = @"请输入搜索条件";
    
    self.navigationItem.titleView = textfield;
}

@end
