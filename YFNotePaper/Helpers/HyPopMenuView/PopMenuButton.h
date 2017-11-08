//
//  PopMenuButton.h
//  HyPopMenuView
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import "HyPopMenuView.h"
#import <UIKit/UIKit.h>

typedef void (^completionAnimation)();

@interface PopMenuButton : UIButton

@property (nonatomic, nonnull, strong) PopMenuModel* model;

@property (nonatomic, nonnull, strong) completionAnimation block;

- (instancetype __nonnull)init;
- (void)selectdAnimation;
- (void)cancelAnimation;

@end
