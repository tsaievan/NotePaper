//
//  VendorMacro.h
//  notePaper
//  第三方常量
//  Created by 李世超 on 17/7/11.
//  Copyright © 2017年 李世超. All rights reserved.
//

#ifndef VendorMacro_h
#define VendorMacro_h

#define ALPHANUM @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

#define IS_IPAD     [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad

//iPhone4
#define iPhone4 [UIScreen mainScreen].bounds.size.height<=480.0f
//iPhone5
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
//iPhone5s
#define IPhone5S [UIScreen mainScreen].bounds.size.height<=568.0f
//iphone6
#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size)) : NO)

//iphone6plus
#define iPhone6plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size)) : NO)


//字体相关
#define FONG_20             [UIFont systemFontOfSize:20.0f]
#define FONG_22             [UIFont systemFontOfSize:22.0f]
#define FONG_16             [UIFont systemFontOfSize:16.0f]
#define FONG_BOLD_16        [UIFont boldSystemFontOfSize:16.0f]
#define FONG_18             [UIFont systemFontOfSize:18.0f]
#define FONG_15             [UIFont systemFontOfSize:15.0f]
#define FONG_14             [UIFont systemFontOfSize:14.0f]
#define FONG_13             [UIFont systemFontOfSize:13.0f]
#define FONG_12             [UIFont systemFontOfSize:12.0f]
#define FONG_10             [UIFont systemFontOfSize:10.0f]
#define FONG_8              [UIFont systemFontOfSize:8.0f]

//屏幕尺寸相关
//获取设备的物理高度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//获取设备的物理宽度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width

///< 获取设备的bounds
#define ScreenBounds [UIScreen mainScreen].bounds

#define iOS8 ([[[UIDevice currentDevice] systemVersion] doubleValue] >= 8.0)

#define REFRESH_HEIGHT              41  //自定义UITabBar的高度
#define STATEBAR_HEIGHT             20  //状态栏的高度
#define TABBAR_HEIGHT               49  //自定义UITabBar的高度

#define BOTTOM_HEIGHT               80  //botoom高度

#define NAVIGATIONHEIGHT            64

#define TABBAR_BUTTON_WIDTH         ScreenWidth/5

#define NOTEHEADER_HEIGHT           200

//图片资源
#define TB_NOTE                          @"tabbar_icon_memo_unselect"
#define TB_CAPSULE                       @"tabbar_icon_capsule_unselect"
#define TB_PUBLISH                       @"tabbar_icon_add"
#define TB_TARGET                        @"tabbar_icon_target_unselect"
#define TB_SETTING                       @"tabbar_icon_set_unselect"

#define TB_NOTE_SELECT                   @"tabbar_icon_memo_select"
#define TB_CAPSULE_SELECT                @"tabbar_icon_capsule_select"
#define TB_TARGET_SELECT                 @"tabbar_icon_target_select"
#define TB_SETTING_SELECT                @"tabbar_icon_set_select"

#define SL_NAVIGATION_IMG                @"navgation_bg.png"

#define NAVIGATIONBAR_BACK_IMG           @"back"

#define NOTE_TOP_BG_IMG                  @"home_bg"

#define TABBAR_IMG   @[TB_NOTE,TB_CAPSULE,TB_PUBLISH,TB_TARGET,TB_SETTING];

#define TABBAR_SELECT_IMG   @[TB_NOTE_SELECT,TB_CAPSULE_SELECT,TB_PUBLISH,TB_TARGET_SELECT,TB_SETTING_SELECT];


#endif /* VendorMacro_h */
