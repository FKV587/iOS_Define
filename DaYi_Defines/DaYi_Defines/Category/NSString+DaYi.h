//
//  NSString+DaYi.h
//  dayikeji
//
//  Created by Fukai on 2018/12/7.
//  Copyright © 2018年 李明. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (DaYi)

/**
 判断字符串
 
 @param str 传入字符串
 @return 返回是否是空的
 */
+ (NSString *)isEmptyString:(id)str;

/**
 根据角色type 返回角色ID

 */
+ (NSString *)stringReloType:(ROLEIDTYPE)type;

/**
 对size进行处理展示

 @param cacheSize b
 */
+ (NSString *)cacheStringWithSDCache:(NSInteger)cacheSize;

/**
 根据字符串获取labelsize
 
 @param title title
 @param font font
 @param width width
 */
+ (CGSize)computationsTextTitlewith:(NSString *)title titleFont:(float)font widthSize:(float)width;

/**
 返回格式化后的时间
 19900101
 @param date 时间
 */
+ (NSString *)stringTimeYYMMDD:(NSDate *)date;

/**
 返回格式化后的时间
 1990-01-01
 @param date 时间
 */
+ (NSString *)stringTimeYY_MM_DD:(NSDate *)date;

/**
 返回格式化后的时间
 1990-01

 @param date 时间
 */
+ (NSString *)stringTimeYY_MM:(NSDate *)date;

/**
 返回格式化后的时间

 @param date 时间
 @param format 格式
 */
+ (NSString *)stringTime:(NSDate *)date dateFormat:(NSString *)format;

/**
 返回格式化后的时间 yyyy.MM.DD HH.mm.ss
 
 @param date 时间
 */
+ (NSString *)stringTimeDotYYMMDDHHmmss:(NSDate *)date;

/**
 去掉这个字符串的空格和换行

 @return 字符串
 */
- (NSString *)handleSpaceAndEnterElementWithString;

- (NSString *)stringWithrReloType:(ROLEIDTYPE)relo;

@end

NS_ASSUME_NONNULL_END
