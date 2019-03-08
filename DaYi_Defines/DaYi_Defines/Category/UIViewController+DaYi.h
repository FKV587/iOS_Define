//
//  UIViewController+DaYi.h
//  DaYi_Defines
//
//  Created by Fukai on 2018/12/28.
//  Copyright © 2018 FuKai. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (DaYi)
/**
 同意alert
 
 @param title 标题
 @param alertTure 点击确定按钮的事件
 cancle 取消的事件
 */
- (void)showNewAlertControllertitle:(NSString *)title alert:(DaYiBlock)alertTure cancle:(DaYiBlock)cancleAlert;

/**
 提示

 @param title 标题
 @param alertTure 回调
 */
- (void)showNewSureAlertControllertitle:(NSString *)title alert:(DaYiBlock)alertTure;
- (void)showNewAlertControllertitle:(NSString *)title cancleTitle:(NSString *)cancleTitle sureTitle:(NSString *)sureTitle alert:(DaYiBlock)alertTure cancle:(DaYiBlock)cancleAlert;

@end

NS_ASSUME_NONNULL_END
