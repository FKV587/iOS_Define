//
//  UIViewController+ImageDispose.m
//  DaYi_Defines
//
//  Created by Fukai on 2018/11/7.
//  Copyright © 2018年 FuKai. All rights reserved.
//

#import "UIViewController+ImageDispose.h"
#import "LBPhotoBrowserManager.h"

@implementation UIViewController (ImageDispose)

- (void)showGroupImageArray:(NSMutableArray *)array buttonTag:(int)tag imageFrame:(CGRect)frame showView:(UIView *)view{
    
    NSMutableArray *items = [[NSMutableArray alloc]init];
    for (int i = 0 ; i < array.count; i++) {
        LBPhotoWebItem *item = [[LBPhotoWebItem alloc]initWithURLString:array[i] frame:frame];
        [items addObject:item];
    }
    
    [LBPhotoBrowserManager.defaultManager showImageWithWebItems:items selectedIndex:tag fromImageViewSuperView:view].lowGifMemory = YES;
}

@end
