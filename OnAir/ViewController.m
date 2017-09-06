//
//  ViewController.m
//  OnAir
//
//  Created by Mac on 2017/9/5.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

#import "ViewController.h"
#import "XWModalView.h"
#import "XWAction.h"
#define ONAIR_KEY_WINDOW [UIApplication sharedApplication].keyWindow

@interface ViewController ()

@property (nonatomic, strong) UIControl *backgroundControl;

@end

@implementation ViewController

- (IBAction)onAir:(id)sender
{
    XWModalView *modalView = [XWModalView modalView];
    
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    contentView.backgroundColor = [UIColor blackColor];
    modalView.customView = contentView;
    
    XWAction *action1 = [XWAction actionWithTitle:@"按钮1" style:XWActionStyleDefault handler:nil];
    XWAction *action2 = [XWAction actionWithTitle:@"按钮2" style:XWActionStyleDefault handler:nil];
    XWAction *action3 = [XWAction actionWithTitle:@"按钮3" style:XWActionStyleDefault handler:nil];
    
    [modalView addAction:action1];
    [modalView addAction:action2];
    [modalView addAction:action3];
    
    [modalView show];
}

@end
