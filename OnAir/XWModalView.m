//
//  XWModalView.m
//  OnAir
//
//  Created by Mac on 2017/9/5.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

#import "XWModalView.h"

@implementation XWModalView

+ (instancetype)modalView
{
    return [[self alloc] init];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _animationType = XWModalViewAnimationDefault;
        _animationDuration = 0.25f;
        _moveInPointOfAnimation = self.center;
        _moveOutPointOfAnimation = self.center;
        _customView = [[UIView alloc] init];
    }
    return self;
}

- (void)show
{
    [self setupUI];
}

- (void)hide
{
    
}

- (void)addAction:(XWAction *)action
{
    
}

- (void)setCustomView:(UIView *)customView
{
    
}

- (void)setupUI
{
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [self setupUI];
}

@end
