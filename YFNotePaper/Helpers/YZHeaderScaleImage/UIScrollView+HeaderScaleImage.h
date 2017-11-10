//
//  UIScrollView+HeaderScaleImage.h
//  YZHeaderScaleImageDemo
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (HeaderScaleImage)

/**
 *  头部缩放视图图片
 */
@property (nonatomic, strong) UIImage *yz_headerScaleImage;

/**
 *  头部缩放视图图片高度
 */
@property (nonatomic, assign) CGFloat yz_headerScaleImageHeight;

@property (nonatomic,strong) NSString *headStr;

@end
