//
//  NoteViewController.m
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import "NoteViewController.h"

@interface NoteViewController ()

@end

@implementation NoteViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        _noteHeaderCell = [[[NSBundle mainBundle] loadNibNamed:@"NoteHeaderCell" owner:self options:nil] lastObject];
    }
    return self;
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _noteTableView = [[NoteTableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight-TABBAR_HEIGHT) style:UITableViewStylePlain];
    _noteTableView.backgroundColor = kUIColorFromRGB(WHITE);
    _noteTableView.backgroundColor = [UIColor clearColor];
    _noteTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    _noteTableView.yz_headerScaleImageHeight = NOTEHEADER_HEIGHT;
    _noteTableView.yz_headerScaleImage = [UIImage imageNamed:NOTE_TOP_BG_IMG];
    _noteTableView.tableHeaderView = _noteHeaderCell;
    [self.view addSubview:_noteTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
