//
//  UIView+Appearance.m
//  AutoGang
//
//  Created by luoxu on 14/11/12.
//  Copyright (c) 2014年 com.qcb008.QiCheApp. All rights reserved.
//

#import "UIView+Appearance.h"
#import "UIColor+HexColor.h"

@implementation UIView(Appearance)

- (void)roundBorder
{
    [self roundCorner:5.0];
    [self border:UIColorSeparator width:0.5];
}

- (void)roundCorner:(CGFloat)raduis
{
    self.layer.cornerRadius = raduis;
    self.layer.masksToBounds = YES;
}

- (void)border:(UIColor *)color width:(CGFloat)width
{
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
    self.layer.masksToBounds = YES;
}

- (void)topBorder:(UIColor *)color width:(CGFloat)width
{
  CALayer * topBorder = [CALayer new];
  topBorder.frame = CGRectMake(0, 0, self.frame.size.width, width);
  topBorder.backgroundColor = color.CGColor;
  [self.layer addSublayer:topBorder];
}

- (void)bottomBorder:(UIColor *)color width:(CGFloat)width
{
  CALayer * topBorder = [CALayer new];
  topBorder.frame = CGRectMake(0, self.frame.size.height - width, self.frame.size.width, width);
  topBorder.backgroundColor = color.CGColor;
  [self.layer addSublayer:topBorder];
}

- (void)leftBorder:(UIColor *)color width:(CGFloat)width
{
  CALayer * topBorder = [CALayer new];
  topBorder.frame = CGRectMake(0, 0, width, self.frame.size.height);
  topBorder.backgroundColor = color.CGColor;
  [self.layer addSublayer:topBorder];
}

- (void)rightBorder:(UIColor *)color width:(CGFloat)width
{
  CALayer * topBorder = [CALayer new];
  topBorder.frame = CGRectMake(self.frame.size.width - width, 0, width, self.frame.size.height);
  topBorder.backgroundColor = color.CGColor;
  [self.layer addSublayer:topBorder];
}

- (void)hadowViewShadowOpacity:(CGFloat)shadowOpacity radius:(CGFloat)radius
{
    self.layer.shadowColor = [UIColor colorWithHex:0x000000 alpha:0.5].CGColor;
    self.layer.shadowRadius = radius;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowOffset = CGSizeMake(0,2);
}

@end
