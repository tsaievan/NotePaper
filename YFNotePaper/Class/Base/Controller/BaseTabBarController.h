//
//  BaseTabBarController.h
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSTabBar.h"
#import "HyPopMenuView.h"

@interface BaseTabBarController : UITabBarController<buttonViewDelegate,HyPopMenuViewDelegate>
{
    PopMenuModel *model;
    PopMenuModel *model2;
    PopMenuModel *model3;
    
    UIButton *titleButton;
    UIButton *lastButton;
}
@property (nonatomic,strong) CSTabBar *csTabBar;
@property (nonatomic, strong) HyPopMenuView* menu;
- (void)showTabbar:(BOOL)show;
@end
