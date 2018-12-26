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
    return YES;
}

- (BOOL)shouldCustomizeNavigationBarTransitionIfHideable{
    return NO;
}

- (BOOL)forceEnableInteractivePopGestureRecognizer{
    return YES;
}

@end
