//
//  HyPopMenuViewDelegate.h
//  HyPopMenuView
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HyPopMenuView, PopMenuModel, PopMenuButton;

@protocol HyPopMenuViewDelegate <NSObject>

- (void)popMenuView:(HyPopMenuView*)popMenuView didSelectItemAtIndex:(NSUInteger)index;

//....
@end
