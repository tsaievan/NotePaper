//
//  CommonUtil.h
//  BmobIMDemo
//
//  Created by 李世超 on 14-6-25.
//  Copyright (c) 2014年 李世超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

typedef void (^buttonBlock)(UIButton *button);

@interface CommonUtil : NSObject
{

    NSMutableAttributedString    *attributeString;
    NSAttributedString           *attributedString;
}

+ (id)shareInstance;

#pragma mark
+(NSString*)turnToEmojiTextWithString:(NSString *)string;
#pragma mark - 时间戳转换时间
+(NSString *)timeIntervalTurnDate:(NSString *)string;
+(NSString *)YearMonthIntervalTurnDate:(NSString *)string;
+(NSString *)YearIntervalTurnDate:(NSString *)string;
+(NSString *)MonthIntervalTurnDate:(NSString *)string;
#pragma mark - 获取时间
+(NSString *)getLocalTime;

+(NSString*)TimeformatFromSeconds:(int)seconds;

+(NSString*)TotalTimeformatFromSeconds:(int)seconds;

+(NSString*)changeTime:(NSDate*)onedate toDateString:(NSString*)str;
+(void)date;
+(NSString*)dateChangeFormatAt:(NSString *)createdAt;

+(void)registerNotice:(NSString *)keyString object:(NSObject*)object;

- (NSAttributedString *)labelContent:(NSString *)content;

- (NSAttributedString *)labelInteractContent:(NSString *)content;

+ (NSString *)generateUuidString;

- (NSMutableAttributedString *)attributeString:(NSString *)content;
- (NSMutableAttributedString *)attributeString2:(NSString *)agree;

//判断是否有网络
+(BOOL)connectedToNetwork;

-(BOOL)isChineseCharacterAndLettersAndNumbersAndUnderScore:(NSString *)string;

+(id)StringTurnJSON:(NSString *)jsonStr;

- (AppDelegate *)myDelegate;


+(void)userDefaultModel:(id)model modelKey:(NSString *)key;


+(void)NavigationLoading:(UIView *)view;

@end
