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
    
    LBPhotoBrowserManager * manager = [LBPhotoBrowserManager.defaultManager showImageWithWebItems:items selectedIndex:tag fromImageViewSuperView:view];
    manager.lowGifMemory = YES;
}

- (void)showImageWithImageArray:(NSArray *)images{
    [self showImageWithImageArray:images selectedIndex:0];
}

- (void)showImageWithImageArray:(NSArray *)images selectedIndex:(int)selectedIndex{
    NSMutableArray *items = [[NSMutableArray alloc]init];
    for (int i = 0 ; i < images.count; i++) {
        LBPhotoLocalItem *item = [[LBPhotoLocalItem alloc]initWithImage:images[i] frame:CGRectMake(0, 0, Screen_width, Screen_height)];
        [items addObject:item];
    }
    LBPhotoBrowserManager * manager = [LBPhotoBrowserManager.defaultManager showImageWithLocalItems:items selectedIndex:selectedIndex fromImageViewSuperView:self.view];
    manager.lowGifMemory = YES;
}

@end
