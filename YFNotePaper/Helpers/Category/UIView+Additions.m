//
//  UIView+Additions.m
//  notePaper
//
//  Created by 李世超 on 13-10-31.
//  Copyright (c) 2013年 李世超. All rights reserved.
//

#import "UIView+Additions.h"

@implementation UIView (Additions)

- (BaseViewController *)viewController
{
    //事件响应链 下一个响应者
    UIResponder *next = [self nextResponder];
    do {
        if ([next isKindOfClass:[BaseViewController class]]) {
           return (BaseViewController *)next;
        }
        next = [next nextResponder];
    } while (next != nil);

    return nil;
}
@end
