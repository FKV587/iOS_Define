//
//  UIImage+GennerateColor.h
//  dayikeji
//
//  Created by Fukai on 2018/10/9.
//  Copyright © 2018年 李明. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (GennerateColor)
+ (UIImage *)squareImageWithColor:(UIColor *)color andSize:(CGSize)size;

+ (UIImage *)squareResizingModeStretchImageWithColor:(UIColor *)color;

//渐变色从上到下
+ (UIImage *)underLineSquarImageWithBGColor:(UIColor *)color1 lineColor:(UIColor *)color2 andSize:(CGSize)size;
//渐变色从左上到右下
+ (UIImage *)underLineSquarImageWithLeftUpColor:(UIColor *)color rightDownColor:(UIColor *)color1 andSize:(CGSize)size;
//渐变色从左到右
+ (UIImage *)underLineSquarImageWithLeftColor:(UIColor *)color rightColor:(UIColor *)color1 andSize:(CGSize)size;

+ (UIImage *)shadow_normal_image;
@end
