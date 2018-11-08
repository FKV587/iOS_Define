//
//  UIViewController+ImageDispose.h
//  DaYi_Defines
//
//  Created by Fukai on 2018/11/7.
//  Copyright © 2018年 FuKai. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (ImageDispose)
/**
 显示大图
 
 @param array shuzu
 */
- (void)showGroupImageArray:(NSMutableArray *)array
                  buttonTag:(int)tag
                 imageFrame:(CGRect)frame
                   showView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
