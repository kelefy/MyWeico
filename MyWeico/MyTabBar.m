//
//  MyTabBar.m
//  MyWeico
//
//  Created by kongfanyi on 16/3/9.
//  Copyright © 2016年 kongfanyi. All rights reserved.
//

#import "MyTabBar.h"
#import "UIView+Extension.h"

@implementation MyTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *plusButton = [[UIButton alloc]init];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        [plusButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [plusButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        plusButton.height = plusButton.currentBackgroundImage.size.height;
        plusButton.width = plusButton.currentBackgroundImage.size.width;
        self.plusButton = plusButton;
        [self addSubview:plusButton];
        NSLog(@"%@",plusButton);
        
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.plusButton.centerX = self.centerX;
    self.plusButton.centerY = self.centerY;
    NSLog(@"%@",self.plusButton);
}

@end
