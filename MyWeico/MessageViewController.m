//
//  MessageViewController.m
//  MyWeico
//
//  Created by kongfanyi on 16/3/9.
//  Copyright © 2016年 kongfanyi. All rights reserved.
//

#import "MessageViewController.h"

@implementation MessageViewController

-(void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]init];
    [rightButton setTitle:@"写私信"];
    NSDictionary *dict = @{NSForegroundColorAttributeName:[UIColor orangeColor],NSFontAttributeName:[UIFont systemFontOfSize:17]};
    [rightButton setTitleTextAttributes:dict forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = rightButton;
}

@end
