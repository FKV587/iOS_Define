//
//  NSString+DaYi.m
//  dayikeji
//
//  Created by Fukai on 2018/12/7.
//  Copyright © 2018年 李明. All rights reserved.
//

#import "NSString+DaYi.h"

@implementation NSString (DaYi)

+ (NSString *)isEmptyString:(id)str{
    if ([str isEqual:[NSNull null]]) {
        return @"";
    }else if ([str isKindOfClass:[NSNumber class]]){
        return [(NSNumber *)str stringValue];
    }
    return [(NSString *)str length] > 0 ? str : @"";
}


+ (NSString *)stringReloType:(ROLEIDTYPE)type{
    NSString * relo = @"";
    switch (type) {
        case ROLEIDTYPE_WORKER:
            relo = @"5pX68Rv2c7eU4MiSiZe";
            break;
        case ROLEIDTYPE_TEAMLEADER:
            relo = @"sUgIgRg59csISVYbByH";
            break;
        case ROLEIDTYPE_SERVICESCOMPANY:
            relo = @"x1Ba1qoEhfyP6S2qTvN";
            break;
        case ROLEIDTYPE_CONSTRUCTIONUNIT_TOTALPACKAGE:
            relo = @"7Va1tNd94LBrr0CKvc1";
            break;
        case ROLEIDTYPE_CONSTRUCTIONUNIT_DEVELOPER:
            relo = @"1HLcJSdvLFoUlld0voH";
            break;
        case ROLEIDTYPE_ADMINISTRATIVEUNIT:
            relo = @"QSjnnNzSgk2MnoemiQ4";
            break;

        default:
            break;
    }
    return relo;
}

+ (NSString *)cacheStringWithSDCache:(NSInteger)cacheSize{
    
    if (cacheSize == 0) {
        return @"暂无缓存";
    }
    if (cacheSize > 0 && cacheSize < 1024) {
        return [NSString stringWithFormat:@"%d B",(int)cacheSize];
    }else if (cacheSize < 1024 * 1024){
        return [NSString stringWithFormat:@"%.2f KB",cacheSize / 1024.0];
    }else if (cacheSize < 1024 * 1024 * 1024){
        return [NSString stringWithFormat:@"%.2f MB",cacheSize / (1024.0 * 1024.0)];
    }else{
        return [NSString stringWithFormat:@"%.2f G",cacheSize / (1024.0 * 1024.0 * 1024.0)];
    }
    return @"";
}

+ (CGSize)computationsTextTitlewith:(NSString *)title titleFont:(float)font widthSize:(float)width{
    CGSize titleSize = [[NSString stringWithFormat:@"%@",title] boundingRectWithSize:CGSizeMake(SCREEN_WIDTH - width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]} context:nil].size;
    return titleSize;
}

+ (NSString *)stringTimeYYMMDD:(NSDate *)date{
    return [self stringTime:date dateFormat:@"YYYY-MM-DD"];
}

+ (NSString *)stringTime:(NSDate *)date dateFormat:(NSString *)format{
    NSLog(@"当前时间NSDate类型 %@",date);
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSString *curTime = [formatter stringFromDate:date];
    NSLog(@"当前时间自定义格式1 %@",curTime);
    return curTime;
}

@end