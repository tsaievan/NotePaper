//
//  NoteCell.m
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import "NoteCell.h"
@interface NoteCell ()
@property (weak, nonatomic) IBOutlet UIView *noteBgView;
@property (weak, nonatomic) IBOutlet UILabel *leftBgLabel;
@end

@implementation NoteCell
+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *identifier = @"noteCell";
    NoteCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"NoteCell" owner:self options:nil] lastObject];
        cell.noteBgView.layer.cornerRadius = 5;
        cell.noteBgView.layer.masksToBounds = YES;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}
- (void)setFrame:(CGRect)frame {
    frame.size.height = NOTEBGCELL_HEIGHT;
    frame.size.height -= NOTEBGCELL_PADDING_HEIGHT;
    [super setFrame:frame];
}

- (void)setLeftColor:(UIColor *)leftColor {
    _leftBgLabel.backgroundColor = leftColor;
}
@end
