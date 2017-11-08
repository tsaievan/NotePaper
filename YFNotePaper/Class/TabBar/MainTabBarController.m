//
//  MainTabBarController.m
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import "MainTabBarController.h"
#import "NoteViewController.h"
#import "CapsuleViewController.h"
#import "PublishViewController.h"
#import "TargetViewController.h"
#import "SettingViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self _initController];
}

- (void)_initController
{
    NoteViewController *notectrl = [[NoteViewController alloc] init];
    CapsuleViewController *capsuleCtrl = [[CapsuleViewController alloc] init];
    PublishViewController *publishCtrl = [[PublishViewController alloc] init];
    TargetViewController *targetCtrl = [[TargetViewController alloc] init];
    SettingViewController *settingCtrl = [[SettingViewController alloc] init];
    
    NSArray *arrayViews = @[notectrl,capsuleCtrl,publishCtrl,targetCtrl,settingCtrl];
    
    viewControllers = [NSMutableArray arrayWithCapacity:5];
    for (UIViewController *viewController in arrayViews) {
        BaseNavigationController *baseNav = [[BaseNavigationController alloc] initWithRootViewController:viewController];
        [viewControllers addObject:baseNav];
        baseNav.delegate = self;
    }
    self.viewControllers = viewControllers;
    self.selectedIndex = 0;
}

# pragma mark UINavigationController delegate
//监听五个导航控制器的push事件
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //导航控制器子控制器的个数
    NSInteger count = navigationController.viewControllers.count;
    if (count == 2) {
        [self showTabbar:NO];
    }else if(count == 1){
        [self showTabbar:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
