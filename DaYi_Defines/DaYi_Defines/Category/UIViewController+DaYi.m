//
//  UIViewController+DaYi.m
//  DaYi_Defines
//
//  Created by Fukai on 2018/12/28.
//  Copyright © 2018 FuKai. All rights reserved.
//

#import "UIViewController+DaYi.h"

@implementation UIViewController (DaYi)

- (void)showNewAlertControllertitle:(NSString *)title alert:(DaYiBlock)alertTure cancle:(DaYiBlock)cancleAlert{
    [self showNewAlertControllertitle:title cancleTitle:@"取消" sureTitle:@"确定" alert:alertTure cancle:cancleAlert];
}

- (void)showNewAlertControllertitle:(NSString *)title cancleTitle:(NSString *)cancleTitle sureTitle:(NSString *)sureTitle alert:(DaYiBlock)alertTure cancle:(DaYiBlock)cancleAlert{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:title preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:cancleTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        if (cancleAlert) {
            cancleAlert();
        }
    }];
    
    UIAlertAction *sure = [UIAlertAction actionWithTitle:sureTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (alertTure) {
            alertTure();
        }
    }];
    [alert addAction:cancle];
    [alert addAction:sure];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
