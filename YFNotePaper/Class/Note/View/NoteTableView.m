//
//  NoteTableView.m
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import "NoteTableView.h"

@implementation NoteTableView

#pragma mark tableView datasource
//子类可以覆盖父类中得这些方法

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    _noteCell = [NoteCell cellWithTableView:tableView];
    _noteCell.leftColor = self.data[indexPath.row];
    return _noteCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75.0f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (BOOL)tableView: (UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}


- (NSArray *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewRowAction *deleteRowAction;
    UITableViewRowAction *moreRowAction;
    deleteRowAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDestructive title:@"删除" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath) {
        
    }];
    deleteRowAction.backgroundColor = kUIColorFromRGB(MAIN_COLOR);
    
    moreRowAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:@"更多" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath) {
    }];
    moreRowAction.backgroundColor = kUIColorFromRGB(0x79E0BC);
    return @[deleteRowAction,moreRowAction];
}

@end
