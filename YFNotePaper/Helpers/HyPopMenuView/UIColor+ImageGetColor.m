//
//  UIColor+ImageGetColor.m
//  YFNotePaper
//
//  Created by tsaievan on 2017/11/6.
//  Copyright © 2017年 tsaievan. All rights reserved.
//

#import "UIColor+ImageGetColor.h"


@implementation UIView (GetImage)

- (UIImage *)yf_imageRepresentation {
    int width = CGRectGetWidth(self.bounds);
    int height = CGRectGetHeight(self.bounds);
    
    NSInteger myDataLength = width * height * 4;
    GLubyte *buffer = (GLubyte *)malloc(myDataLength);
    glReadPixels(0, 0, width, height, GL_RGBA, GL_UNSIGNED_BYTE, buffer);
    
    GLubyte *anotherBuffer = (GLubyte *)malloc(myDataLength);
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width * 4; x++) {
            anotherBuffer[(height - 1 - y) * width * 4 + x] = buffer[y * 4 * width + x];
        }
    }
    
    CGDataProviderRef provider = CGDataProviderCreateWithData(NULL, anotherBuffer, myDataLength, NULL);
    
    int bitsPerComponent = 8;
    int bitsPerPixel = 32;
    int bytesPerRow = 4 * width;
    
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    CGBitmapInfo bitmapInfo = kCGBitmapByteOrderDefault;
    CGColorRenderingIntent renderingIntent = kCGRenderingIntentDefault;
    
    CGImageRef imageRef = CGImageCreate(width, height, bitsPerComponent, bitsPerPixel, bytesPerRow, colorSpaceRef, bitmapInfo, provider, NULL, NO, renderingIntent);
    
    UIImage *image = [UIImage imageWithCGImage:imageRef];
    return image;
}

@end

@implementation UIColor (ImageGetColor)

+ (UIColor *)yf_getPixelColorAtLocation:(CGPoint)point inImage:(UIImage *)image {
    UIColor *color = nil;
    CGImageRef inImage = image.CGImage;
    CGContextRef cgctx = [self _yf_creatARGBBitmapContextFromImage:inImage];
    
    if (cgctx == NULL) {
        return nil;
    }
    size_t w = CGImageGetWidth(inImage);
    size_t h = CGImageGetWidth(inImage);
    CGRect rect = CGRectMake(0, 0, w, h);
    CGContextDrawImage(cgctx, rect, inImage);
    
    unsigned char *data = CGBitmapContextGetData(cgctx);
    
    if (data != NULL) {
        int offset = 4 * ((w * round(point.y)) + round(point.x));
        int alpha = data[offset];
        int red = data[offset + 1];
        int green = data[offset + 2];
        int blue = data[offset + 3];
        
        color = [UIColor colorWithRed:(red / 255.0) green:(green / 255.0) blue:(blue / 255.0) alpha:(alpha / 255.0)];
    }
    
    CGContextRelease(cgctx);
    if (data) {
        free(data);
    }
    return color;
}

+ (CGContextRef)_yf_creatARGBBitmapContextFromImage:(CGImageRef)inImage {
    CGContextRef context = NULL;
    CGColorSpaceRef colorSpace;
    void *bitmapData;
    unsigned long bitmapByteCount;
    unsigned long bitmapBytesPerRow;
    
    size_t pixelsWidth = CGImageGetWidth(inImage);
    size_t pixelsHeight = CGImageGetHeight(inImage);
    
    bitmapBytesPerRow = (pixelsWidth * 4);
    bitmapByteCount = (bitmapBytesPerRow * pixelsHeight);
    colorSpace = CGColorSpaceCreateDeviceRGB();
    
    if (colorSpace == NULL) {
        fprintf(stderr, "Error allocating color space\n");
        return NULL;
    }
    
    bitmapData = malloc(bitmapByteCount);
    if (bitmapData == NULL) {
        fprintf(stderr, "Memory not allocated!");
        CGColorSpaceRelease(colorSpace);
        return NULL;
    }
    
    context = CGBitmapContextCreate(bitmapData, pixelsWidth, pixelsHeight, 0, bitmapBytesPerRow, colorSpace, (CGBitmapInfo)kCGImageAlphaPremultipliedFirst);
    
    if (context == NULL) {
        free(bitmapData);
        fprintf(stderr, "Context not created");
    }
    
    CGColorSpaceRelease(colorSpace);
    return context;
}


@end

@implementation UIImage (Tint)

- (UIImage *)yf_imageWithTintColor:(UIColor *)tintColor {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    [tintColor setFill];
    CGRect bounds = CGRectMake(0, 0, self.size.width, self.size.height);
    UIRectFill(bounds);
    [self drawInRect:bounds blendMode:kCGBlendModeDestinationIn alpha:1];
    UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return tintedImage;
}

@end

