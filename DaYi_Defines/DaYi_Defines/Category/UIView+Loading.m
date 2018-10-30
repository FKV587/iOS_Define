//
//  UIView+Loading.m
//  DaYi_Defines
//
//  Created by Fukai on 2018/10/30.
//  Copyright © 2018年 FuKai. All rights reserved.
//

#import "UIView+Loading.h"
#import <MBProgressHUD/MBProgressHUD.h>

@implementation UIView (Loading)

- (void)showDaYiLoading{
    [self showDaYiLoadingTitle:nil subtitle:nil];
}

- (void)showDaYiLoadingTitle:(NSString *)title{
    [self showDaYiLoadingTitle:title subtitle:nil];
}

- (void)showDaYiLoadingSubtitle:(NSString *)subtitle{
    [self showDaYiLoadingTitle:nil subtitle:subtitle];
}

- (void)showDaYiLoadingTitle:(NSString *)title subtitle:(NSString *)subtitle{
    [MBProgressHUD hideHUDForView:self animated:NO];
    MBProgressHUD *hub = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hub.mode = MBProgressHUDModeIndeterminate;
    hub.animationType = MBProgressHUDAnimationZoom;
    hub.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hub.label.text = [NSString stringWithFormat:@" %@ ",title];//title;
    hub.label.textColor = [UIColor whiteColor];
    hub.detailsLabel.text = subtitle;
    hub.detailsLabel.textColor = [UIColor whiteColor];
    
    hub.bezelView.color = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.7f];//[UIColor blackColor];
    hub.defaultMotionEffectsEnabled = NO;
}

- (void)hiddenLoding{
    [MBProgressHUD hideHUDForView:self animated:NO];
}

- (void)showToast:(NSString *)message{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.text = message;
    [hud hideAnimated:YES afterDelay:1.5f];
}

@end
