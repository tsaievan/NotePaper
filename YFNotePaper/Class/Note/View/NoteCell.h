//
//  NoteCell.h
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoteCell : UITableViewCell

@property (nonatomic, strong) UIColor *leftColor;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
