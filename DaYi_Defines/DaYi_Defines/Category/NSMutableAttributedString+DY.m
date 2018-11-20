//
//  NSMutableAttributedString+DY.m
//  dayikeji
//
//  Created by Fukai on 2018/10/19.
//  Copyright © 2018年 李明. All rights reserved.
//

#import "NSMutableAttributedString+DY.h"

@implementation NSMutableAttributedString (DY)

+ (NSMutableAttributedString *)attributedSetting:(NSString *)firstStr waitStr:(NSString *)waitStr font:(UIFont *)font
{
    NSMutableAttributedString *attString = [[NSMutableAttributedString alloc] initWithString:waitStr];
    [attString addAttribute:NSForegroundColorAttributeName
                      value:tableviewLine
                      range:NSMakeRange(4, 1)];
    [attString addAttribute:NSForegroundColorAttributeName
                      value:NAVBlue
                      range:NSMakeRange(5, firstStr.length)];
    [attString addAttribute:NSFontAttributeName
                      value:font
                      range:NSMakeRange(5, firstStr.length)];
    [attString addAttribute:NSForegroundColorAttributeName
                      value:tableviewLine
                      range:NSMakeRange(5 + firstStr.length, 1)];
    return attString;
}

@end
