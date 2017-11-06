//
//  UIColor+ImageGetColor.h
//  YFNotePaper
//
//  Created by tsaievan on 2017/11/6.
//  Copyright © 2017年 tsaievan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <OpenGLES/ES1/glext.h>

@interface UIView (GetImage)

- (UIImage *)yf_imageRepresentation;

@end

@interface UIColor (ImageGetColor)

+ (UIColor *)yf_getPixelColorAtLocation:(CGPoint)point inImage:(UIImage *)image;

@end

@interface UIImage (Tint)

- (UIImage *)yf_imageWithTintColor:(UIColor *)tintColor;

@end
