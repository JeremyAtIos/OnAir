//
//  ViewController.m
//  OnAir
//
//  Created by Mac on 2017/9/5.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

#import "ViewController.h"

#define ONAIR_KEY_WINDOW [UIApplication sharedApplication].keyWindow

@interface ViewController ()

@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIControl *backgroundControl;

@end

@implementation ViewController

- (IBAction)onAir:(id)sender
{
    [ONAIR_KEY_WINDOW addSubview:self.backgroundControl];
    [ONAIR_KEY_WINDOW addSubview:self.contentView];
    self.backgroundControl.frame = self.view.bounds;
    self.contentView.center = ONAIR_KEY_WINDOW.center;
    [UIView animateWithDuration:0.2 animations:^{
        self.contentView.bounds = CGRectMake(0, 0, 200, 200);
    }];
    
    UIAlertAction
}

- (UIView *)contentView
{
    if (!_contentView) {
        _contentView = [[UIView alloc] init];
        _contentView.layer.cornerRadius = 5.0f;
        _contentView.backgroundColor = [UIColor whiteColor];
    }
    return _contentView;
}

- (UIControl *)backgroundControl
{
    if (!_backgroundControl) {
        _backgroundControl = [[UIControl alloc] init];
        _backgroundControl.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3f];
        [_backgroundControl addTarget:self action:@selector(backgroundTouched) forControlEvents:UIControlEventTouchUpInside];
    }
    return _backgroundControl;
}

- (void)backgroundTouched
{
    [UIView animateWithDuration:0.2 animations:^{
        self.contentView.bounds = CGRectZero;
    } completion:^(BOOL finished) {
        [self.contentView removeFromSuperview];
        [self.backgroundControl removeFromSuperview];
    }];
}

@end
