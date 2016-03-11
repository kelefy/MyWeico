//
//  NewFeatureViewController.m
//  MyWeico
//
//  Created by kongfanyi on 16/3/10.
//  Copyright © 2016年 kongfanyi. All rights reserved.
//

#import "NewFeatureViewController.h"
#import "UIView+Extension.h"

@implementation NewFeatureViewController

-(void)viewDidLoad
{
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    for (int i = 0; i<4; i++) {
        NSString *imgName = [NSString stringWithFormat:@"new_feature_%d",i+1];
        UIImageView *imv = [[UIImageView alloc]initWithFrame:CGRectMake(i*self.view.width, 0, self.view.width, self.view.height)];
        imv.image = [UIImage imageNamed:imgName];
        [scrollView addSubview:imv];
        scrollView.contentSize = CGSizeMake((i+1)*self.view.width, self.view.height);
    }
    scrollView.pagingEnabled = YES;
    scrollView.delegate = self;
//    scrollView
    [self.view addSubview:scrollView];
    
    UIPageControl *page = [[UIPageControl alloc]init];
    page.height = 20;
    page.width = 80;
    page.y = self.view.height-60;
    page.centerX = self.view.centerX;
    
    page.pageIndicatorTintColor = [UIColor grayColor];
    page.numberOfPages = 4;
    page.currentPageIndicatorTintColor = [UIColor orangeColor];
    [self.view addSubview:page];
    self.pageControl = page;
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint point = scrollView.contentOffset;
    CGFloat x = point.x;
    self.pageControl.currentPage = (x+self.view.width/2.f)/self.view.width;
}

@end
