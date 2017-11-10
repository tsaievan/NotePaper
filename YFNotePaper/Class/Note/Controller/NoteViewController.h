//
//  NoteViewController.h
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import "BaseViewController.h"
#import "NoteHeaderCell.h"
#import "NoteTableView.h"
#import "UIScrollView+HeaderScaleImage.h"

@interface NoteViewController : BaseViewController

@property (nonatomic, strong) NSMutableArray *noteArray;

@property (nonatomic,strong) NoteTableView *noteTableView;
@property (nonatomic,strong) NoteHeaderCell *noteHeaderCell;
@end
