//
//  NoteModel.h
//  notePaper
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import "Jastor.h"

@interface NoteModel : Jastor

@property (nonatomic,assign) int uid;
@property (nonatomic,copy) NSString *note;
@property (nonatomic,assign) int starTag;
@property (nonatomic,assign) int colorTag;
@property (nonatomic,copy) NSData *imgData;
@property (nonatomic,copy) NSString *ctime;
@end
