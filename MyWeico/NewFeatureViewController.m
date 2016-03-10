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
//    scrollView
    [self.view addSubview:scrollView];
}

@end
