//
//  UIViewController+DaYi.m
//  DaYi_Defines
//
//  Created by Fukai on 2018/12/28.
//  Copyright © 2018 FuKai. All rights reserved.
//

#import "UIViewController+DaYi.h"

@interface UIAlertController (DaYi)

@end

@implementation UIAlertController (DaYi)

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotate{
    return NO;
}

@end

@implementation UIViewController (DaYi)

- (void)showNewAlertControllertitle:(NSString *)title alert:(DaYiBlock)alertTure cancle:(DaYiBlock)cancleAlert{
    [self showNewAlertControllertitle:title cancleTitle:@"取消" sureTitle:@"确定" alert:alertTure cancle:cancleAlert];
}

- (void)showNewSureAlertControllertitle:(NSString *)title alert:(DaYiBlock)alertTure{
    [self showNewAlertControllertitle:title cancleTitle:@"" sureTitle:@"知道了" alert:alertTure cancle:nil];
}

- (void)showNewAlertControllertitle:(NSString *)title cancleTitle:(NSString *)cancleTitle sureTitle:(NSString *)sureTitle alert:(DaYiBlock)alertTure cancle:(DaYiBlock)cancleAlert{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:title preferredStyle:UIAlertControllerStyleAlert];

    if (cancleTitle.length > 0) {
        UIAlertAction *cancle = [UIAlertAction actionWithTitle:cancleTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            if (cancleAlert) {
                cancleAlert();
            }
        }];
        [alert addAction:cancle];
    }
    
    if (sureTitle.length > 0) {
        UIAlertAction *sure = [UIAlertAction actionWithTitle:sureTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            if (alertTure) {
                alertTure();
            }
        }];
        [alert addAction:sure];
    }
    
    [self presentViewController:alert animated:YES completion:nil];
}



@end
