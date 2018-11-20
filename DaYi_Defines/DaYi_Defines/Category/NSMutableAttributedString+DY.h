//
//  NSMutableAttributedString+DY.h
//  dayikeji
//
//  Created by Fukai on 2018/10/19.
//  Copyright © 2018年 李明. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (DY)

//待审批 计数颜色修改 字体大小不变
+ (NSMutableAttributedString *)attributedSetting:(NSString *)firstStr waitStr:(NSString *)waitStr font:(UIFont *)font;

@end
