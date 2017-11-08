//
//  UIColor+ImageGetColor.h
//  HyPopMenuView
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <OpenGLES/ES1/glext.h>

@interface UIView (GetImgae)

-(UIImage *)imageRepresentation;

@end

@interface UIColor (ImageGetColor)

+ (UIColor*) getPixelColorAtLocation:(CGPoint)point inImage:(UIImage *)image;

@end


@interface UIImage (Tint)

- (UIImage *) imageWithTintColor:(UIColor *)tintColor;

@end
