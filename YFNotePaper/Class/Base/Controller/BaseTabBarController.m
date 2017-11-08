//
//  BaseTabBarController.m
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import "BaseTabBarController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //隐藏TabBar
        [self.tabBar setHidden:YES];
    }
    return self;
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [[UITabBar appearance] setShadowImage:[UIImage new]];
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc]init]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTabBar];
}

#pragma mark - 自定义tabbar的View
- (void)initTabBar{
    
    self.csTabBar = [CSTabBar buttonView];
    self.csTabBar.frame = CGRectMake(0, ScreenHeight-TABBAR_HEIGHT,ScreenWidth, TABBAR_HEIGHT);
    self.csTabBar.backgroundColor = [UIColor whiteColor];
    self.csTabBar.delegate = self;
    self.csTabBar.layer.shadowColor = [[UIColor blackColor] colorWithAlphaComponent:0.8].CGColor;
    self.csTabBar.layer.shadowOffset = CGSizeMake(10,10);
    self.csTabBar.layer.shadowOpacity = 0.65;
    self.csTabBar.layer.shadowRadius = 8;
    [self.view addSubview:self.csTabBar];
    
    NSArray *titleArray = @[CSLangaueStr(@"TBNote"),CSLangaueStr(@"TBCapsule"),@"",CSLangaueStr(@"TBTarget"),CSLangaueStr(@"TBSetting")];
    
    for (NSInteger index = 0; index <titleArray.count; index++) {
        titleButton = [UIButton buttonWithType:UIButtonTypeCustom];
        titleButton.frame = CGRectMake(index * TABBAR_BUTTON_WIDTH, 30, TABBAR_BUTTON_WIDTH, 20);
        titleButton.userInteractionEnabled = NO;
        titleButton.titleLabel.font = FONG_10;
        [titleButton setTitle:titleArray[index] forState:UIControlStateNormal];
        titleButton.tag = 10+index;
        if (index==0) {
            lastButton = titleButton;
            lastButton.selected = YES;
        }
        [titleButton setTitleColor:kUIColorFromRGB(SECOND_COLOR) forState:UIControlStateNormal];
        [titleButton setTitleColor:kUIColorFromRGB(MAIN_COLOR) forState:UIControlStateSelected];
        [self.csTabBar addSubview:titleButton];
    }
}

#pragma mark -button代理
- (void)clickButtonWithIndex:(NSInteger)index{
    
    if (index==2) {
        _menu.backgroundType = HyPopMenuViewBackgroundTypeDarkTranslucent;
        [_menu openMenu];
        return;
    }
    lastButton.selected = NO;
    lastButton = (UIButton *)[self.view viewWithTag:10+index];
    lastButton.selected = YES;

    self.selectedIndex = index;
}

#pragma mark - 是否显示TabBar
- (void)showTabbar:(BOOL)show
{
    [UIView animateWithDuration:0.30 animations:^{
        if (show) {
            self.csTabBar.bottom = ScreenHeight;
        }else{
            self.csTabBar.bottom = ScreenHeight+TABBAR_HEIGHT;
        }
    }];
    
}

#pragma mark - ui 私有的方法-初始化子控制器
- (void)_resizeView:(BOOL)showTarbar
{
    for (UIView *subView in self.view.subviews) {
        if ([subView isKindOfClass:NSClassFromString(@"UITransitionView")]) {
            if (showTarbar) {
                subView.height = ScreenHeight;
            }else{
                subView.height = ScreenHeight+TABBAR_HEIGHT;
            }
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
