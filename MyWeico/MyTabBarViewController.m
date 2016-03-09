//
//  MyTabBarViewController.m
//  MyWeico
//
//  Created by kongfanyi on 16/3/9.
//  Copyright © 2016年 kongfanyi. All rights reserved.
//

#import "MyTabBarViewController.h"
#import "HomeViewController.h"
#import "MessageViewController.h"
#import "DiscoverViewController.h"
#import "ProfileViewController.h"

@implementation MyTabBarViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    HomeViewController *home = [HomeViewController new];
    [self addChildVC:home title:@"首页" imageName:@"tabbar_home" selectImageName:@"tabbar_home_selected"];
    
    MessageViewController *message = [MessageViewController new];
    [self addChildVC:message title:@"消息" imageName:@"tabbar_message_center" selectImageName:@"tabbar_message_center_selected"];
    
    DiscoverViewController *dis = [DiscoverViewController new];
    [self addChildVC:dis title:@"广场" imageName:@"tabbar_discover" selectImageName:@"tabbar_discover_selected"];
    
    ProfileViewController *profile = [ProfileViewController new];
    [self addChildVC:profile title:@"我" imageName:@"tabbar_profile" selectImageName:@"tabbar_profile_selected"];
}


-(void)addChildVC:(UIViewController *)vC title:(NSString *)title imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName
{
//    HomeViewController *home = [HomeViewController new];
    vC.title = title;
    UIImage *homeImg = [UIImage imageNamed:selectImageName];
    //阻止tab控制器渲染图片
    homeImg = [homeImg imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vC.tabBarItem.image = [UIImage imageNamed:imageName];
    vC.tabBarItem.selectedImage = homeImg;
    
    NSDictionary *dicSelected = @{NSForegroundColorAttributeName:[UIColor orangeColor]};
    [vC.tabBarItem setTitleTextAttributes:dicSelected forState:UIControlStateSelected];
    
    NSDictionary *dicNormal = @{NSForegroundColorAttributeName:[UIColor blackColor]};
    [vC.tabBarItem setTitleTextAttributes:dicNormal forState:UIControlStateNormal];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vC];
    
    [self addChildViewController:nav];
}

@end
