//
//  BaseViewController.h
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController: UIViewController <UIGestureRecognizerDelegate> {
      UIButton *rightBarButton;
      UIWindow *windows;
}

@property(nonatomic, assign) BOOL isRight;

-(UIImage *)screenShot;

@property(nonatomic, assign) BOOL isRightButton;
@property(nonatomic, assign) BOOL isBackButton;

- (void)setNavigationTitle:(NSString *)title;
- (void)setNavigationWTitle:(NSString *)title;
- (void)setNavigationImg:(UIImage *)image;
- (void)backAction;


@end
