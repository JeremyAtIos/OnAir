//
//  XWModalView.h
//  OnAir
//
//  Created by Mac on 2017/9/5.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, XWModalViewAnimationType) {
    XWModalViewAnimationNone = 0,
    XWModalViewAnimationZoom = 1,
    XWModalViewAnimationFade = 2,
    XWModalViewAnimationMove = 3,
    XWModalViewAnimationDefault = XWModalViewAnimationZoom
};

@class XWAction;

@interface XWModalView : UIView

+ (instancetype)modalView;

- (void)show;
- (void)hide;

@property (nonatomic, assign) XWModalViewAnimationType animationType;
@property (nonatomic, assign) NSTimeInterval animationDuration;
@property (nonatomic, assign) CGPoint moveInPointOfAnimation;
@property (nonatomic, assign) CGPoint moveOutPointOfAnimation;

- (void)addAction:(XWAction *)action;

@property (nonatomic, strong) UIView *customView;

@end
