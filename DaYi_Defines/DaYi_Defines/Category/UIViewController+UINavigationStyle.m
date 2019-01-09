//
//  UIViewController+UINavigationStyle.m
//  DaYi_Defines
//
//  Created by Fukai on 2018/12/26.
//  Copyright © 2018 FuKai. All rights reserved.
//

#import "UIViewController+UINavigationStyle.h"

@implementation UIViewController (UINavigationStyle)

#pragma makr -- QMUINavigationControllerDelegate --
- (BOOL)preferredNavigationBarHidden{
    return NO;
}

- (BOOL)shouldCustomizeNavigationBarTransitionIfHideable{
    return YES;
}

- (BOOL)forceEnableInteractivePopGestureRecognizer{
    return YES;
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

@end
