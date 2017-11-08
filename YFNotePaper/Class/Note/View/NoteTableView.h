//
//  NoteTableView.h
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import "BaseTableView.h"
#import "NoteCell.h"

@interface NoteTableView : BaseTableView

@property (nonatomic,strong) NoteCell *noteCell;
@end
