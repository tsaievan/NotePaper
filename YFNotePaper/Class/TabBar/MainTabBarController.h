//
//  MainTabBarController.h
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import "BaseTabBarController.h"
#import "BaseNavigationController.h"

@interface MainTabBarController : BaseTabBarController<UINavigationControllerDelegate>
{
    NSMutableArray *viewControllers;
}
@end