//
//  UIButton+UIStyle.m
//  dayikeji
//
//  Created by Fukai on 2018/10/9.
//  Copyright © 2018年 李明. All rights reserved.
//

#import "UIButton+UIStyle.h"
#import <objc/runtime.h>

@implementation UIButton (UIStyle)

static CGFloat BIGHEIGHT = 42.0;

static char * UISTYLETYPE = "UISTYLETYPE";

+ (void)load
{
    Method origMethod = class_getInstanceMethod(self, @selector(setEnabled:));
    Method swizMethod = class_getInstanceMethod(self, @selector(setEnabledNew:));
    BOOL didAddMethod = class_addMethod(self, @selector(setEnabled:), method_getImplementation(swizMethod), method_getTypeEncoding(swizMethod));
    if (didAddMethod) {
        class_replaceMethod(self, @selector(setEnabledNew:), method_getImplementation(origMethod), method_getTypeEncoding(origMethod));
    } else {
        //origMethod and swizMethod already exist
        method_exchangeImplementations(origMethod, swizMethod);
    }

}

- (void)bigButtonStyleOne
{
    [self roundCorner:4.0];
    [self setTitleColor:[UIColor colorWithHex:0xffffff alpha:1] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithHex:0xffffff alpha:0.6] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor colorWithHex:0xffffff alpha:0.3] forState:UIControlStateDisabled];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0x2e9ef5] andSize:CGSizeMake(Screen_width, BIGHEIGHT)] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0x298edc] andSize:CGSizeMake(Screen_width, BIGHEIGHT)] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0x2e9ef5 alpha:0.6] andSize:CGSizeMake(Screen_width, BIGHEIGHT)] forState:UIControlStateDisabled];
}

- (void)bigButtonStyleTwo
{
    [self roundCorner:4.0];
    [self setTitleColor:[UIColor colorWithHex:0x000000 alpha:1] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithHex:0x000000 alpha:0.6] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor colorWithHex:0x000000 alpha:0.3] forState:UIControlStateDisabled];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0xF8F8F8] andSize:CGSizeMake(Screen_width, BIGHEIGHT)] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0xDFDFDF] andSize:CGSizeMake(Screen_width, BIGHEIGHT)] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0xF8F8F8] andSize:CGSizeMake(Screen_width, BIGHEIGHT)] forState:UIControlStateDisabled];
}

- (void)inButtonStyleOne
{
    [self roundCorner:3.0];
    [self setTitleColor:[UIColor colorWithHex:0xffffff alpha:1] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithHex:0xffffff alpha:0.6] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor colorWithHex:0xffffff alpha:0.3] forState:UIControlStateDisabled];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0x2e9ef5] andSize:self.frame.size] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0x298edc] andSize:self.frame.size] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0x2e9ef5 alpha:0.6] andSize:self.frame.size] forState:UIControlStateDisabled];

}

- (void)inButtonStyleTwo
{
    [self roundCorner:3.0];
    [self setTitleColor:[UIColor colorWithHex:0x2e9ef5 alpha:1] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithHex:0xffffff alpha:0.6] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor colorWithHex:0xffffff alpha:0.2] forState:UIControlStateDisabled];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0xffffff] andSize:self.frame.size] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0x298edc] andSize:self.frame.size] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0xffffff alpha:0.2] andSize:self.frame.size] forState:UIControlStateDisabled];
}

- (void)inButtonStyleThree
{
    [self roundCorner:3.0];
    [self setTitleColor:[UIColor colorWithHex:0x000000 alpha:1] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithHex:0x000000 alpha:0.6] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor colorWithHex:0x000000 alpha:0.3] forState:UIControlStateDisabled];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0xF8F8F8] andSize:self.frame.size] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0xDFDFDF] andSize:self.frame.size] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[UIImage squareImageWithColor:[UIColor colorWithHex:0xF8F8F8] andSize:self.frame.size] forState:UIControlStateDisabled];
}

- (void)loadViews
{
    switch (self.uiStyle) {
        case UIButtonUIStyle_BIGONE:
            [self bigButtonStyleOne];
            break;
        case UIButtonUIStyle_BIGTWO:
            [self bigButtonStyleTwo];
            [self border:[UIColor colorWithHex:0xDDDDDD] width:1];
            break;
        case UIButtonUIStyle_ONE:
            [self inButtonStyleOne];
            break;
        case UIButtonUIStyle_TWO:
            [self inButtonStyleTwo];
            [self border:[UIColor colorWithHex:0x2E9EF5] width:1];
            break;
        case UIButtonUIStyle_THREE:
            [self inButtonStyleThree];
            [self border:[UIColor colorWithHex:0xDDDDDD] width:1];
            break;
            
        default:
            break;
    }

}

- (void)setEnabledNew:(BOOL)enabled
{
    [self setEnabledNew:enabled];
    if (enabled) {
        switch (self.uiStyle) {
            case UIButtonUIStyle_TWO:
                [self border:[UIColor colorWithHex:0xDDDDDD] width:1];
                break;
                
            default:
                break;
        }
    }else{
        switch (self.uiStyle) {
            case UIButtonUIStyle_TWO:
                [self border:[UIColor colorWithHex:0x2E9EF5] width:1];
                break;
                
            default:
                break;
        }
    }
}

- (void)buttonNormalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor
{
    [self roundCorner:21.0];
    [self setTitleColor:[UIColor colorWithHex:0xffffff alpha:1] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage squareResizingModeStretchImageWithColor:normalColor] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage squareResizingModeStretchImageWithColor:highlightedColor] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[UIImage squareResizingModeStretchImageWithColor:[UIColor colorWithHex:0xDDDDDD]] forState:UIControlStateDisabled];
}

#pragma mark -- setter getter --
- (UIButtonUIStyle)uiStyle
{
    NSNumber * number = objc_getAssociatedObject(self, UISTYLETYPE);
    return number.integerValue;
}

- (void)setUiStyle:(UIButtonUIStyle)uiStyle
{
    objc_setAssociatedObject(self, UISTYLETYPE, @(uiStyle), OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self loadViews];
}


@end
