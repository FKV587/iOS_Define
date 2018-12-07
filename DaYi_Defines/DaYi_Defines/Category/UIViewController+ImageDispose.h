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

 @param array string
 @param selectedIndex 选中
 */
- (void)showGroupImageArray:(NSArray <NSString *> *)array selectedIndex:(int)selectedIndex;
/**
 显示大图
 
 @param array shuzu
 */
- (void)showGroupImageArray:(NSArray <NSString *> *)array
                  buttonTag:(int)tag
                 imageFrame:(CGRect)frame
                   showView:(UIView *)view;

/**
 显示大图

 @param images 图片详情
 */
- (void)showImageWithImageArray:(NSArray <UIImage *>*)images;

/**
 显示大图
 
 @param images 图片详情
 @param selectedIndex 当前展示第一张图
 */
- (void)showImageWithImageArray:(NSArray <UIImage *>*)images selectedIndex:(int)selectedIndex;
@end

NS_ASSUME_NONNULL_END
