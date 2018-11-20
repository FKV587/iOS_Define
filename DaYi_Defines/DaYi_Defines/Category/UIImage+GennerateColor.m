//
//  UIImage+GennerateColor.m
//  dayikeji
//
//  Created by Fukai on 2018/10/9.
//  Copyright © 2018年 李明. All rights reserved.
//

#import "UIImage+GennerateColor.h"

@implementation UIImage (GennerateColor)

+ (UIImage *)squareImageWithColor:(UIColor *)color andSize:(CGSize)size
{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(), color.CGColor);
    CGContextFillRect(UIGraphicsGetCurrentContext(), CGRectMake(0, 0, ceil(size.width), ceil(size.height)));
    UIImage * image  = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)squareResizingModeStretchImageWithColor:(UIColor *)color
{
    CGSize size = CGSizeMake(3, 3);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(), color.CGColor);
    CGContextFillRect(UIGraphicsGetCurrentContext(), CGRectMake(0, 0, ceil(size.width), ceil(size.height)));
    UIImage * image  = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGFloat top = 1; // 顶端盖高度
    CGFloat bottom = 1 ; // 底端盖高度
    CGFloat left = 1; // 左端盖宽度
    CGFloat right = 1; // 右端盖宽度
    UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);
    image = [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    return image;
}

+ (UIImage *)underLineSquarImageWithBGColor:(UIColor *)color1 lineColor:(UIColor *)color2 andSize:(CGSize)size
{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(), color1.CGColor);
    CGContextFillRect(context, CGRectMake(0, 0, ceil(size.width), ceil(size.height)));
    
    CGContextSetFillColorWithColor(context, color2.CGColor);
    CGContextFillRect(context, CGRectMake(0, size.height - 4, size.width, 4));
    
    UIImage * image  = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)underLineSquarImageWithLeftColor:(UIColor *)color rightColor:(UIColor *)color1 andSize:(CGSize)size
{
    CIFilter *ciFilter = [CIFilter filterWithName:@"CILinearGradient"];
    CIVector *vector0 = [CIVector vectorWithX:0 Y:size.height];
    CIVector *vector1 = [CIVector vectorWithX:0 Y:size.width];
    [ciFilter setValue:vector0 forKey:@"inputPoint0"];
    [ciFilter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:@"inputColor0"];
    [ciFilter setValue:vector1 forKey:@"inputPoint1"];
    [ciFilter setValue:[CIColor colorWithCGColor:color1.CGColor] forKey:@"inputColor1"];
    
    CIImage *ciImage = ciFilter.outputImage;
    CIContext *con = [CIContext contextWithOptions:nil];
    CGImageRef resultCGImage = [con createCGImage:ciImage
                                         fromRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *resultUIImage = [UIImage imageWithCGImage:resultCGImage];
    CGImageRelease(resultCGImage);
    
    return resultUIImage;
}

+ (UIImage *)underLineSquarImageWithLeftUpColor:(UIColor *)color rightDownColor:(UIColor *)color1 andSize:(CGSize)size
{
    CIFilter *ciFilter = [CIFilter filterWithName:@"CILinearGradient"];
    CIVector *vector0 = [CIVector vectorWithX:0 Y:size.height];
    CIVector *vector1 = [CIVector vectorWithX:size.width Y:0];
    [ciFilter setValue:vector0 forKey:@"inputPoint0"];
    [ciFilter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:@"inputColor0"];
    [ciFilter setValue:vector1 forKey:@"inputPoint1"];
    [ciFilter setValue:[CIColor colorWithCGColor:color1.CGColor] forKey:@"inputColor1"];
    
    CIImage *ciImage = ciFilter.outputImage;
    CIContext *con = [CIContext contextWithOptions:nil];
    CGImageRef resultCGImage = [con createCGImage:ciImage
                                         fromRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *resultUIImage = [UIImage imageWithCGImage:resultCGImage];
    CGImageRelease(resultCGImage);
    
    return resultUIImage;
}

+ (UIImage *)shadow_normal_image
{
    CGFloat top = 6; // 顶端盖高度
    CGFloat bottom = 10 ; // 底端盖高度
    CGFloat left = 6; // 左端盖宽度
    CGFloat right = 5; // 右端盖宽度
    UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);
    return [[UIImage imageNamed:@"btn.9"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
}

@end
