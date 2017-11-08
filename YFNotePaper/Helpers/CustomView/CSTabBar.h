//
//  CSTabBar.h
//  hepai
//
//  Created by 李世超 on 2017/7/11.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import <UIKit/UIKit.h>


#pragma mark - 协议
@protocol buttonViewDelegate <NSObject>
@optional
- (void)clickButtonWithIndex:(NSInteger)index;

@end

#pragma mark -
@interface CSTabBar : UIView

@property (nonatomic,weak) id<buttonViewDelegate> delegate;

+ (instancetype)buttonView;

@end


