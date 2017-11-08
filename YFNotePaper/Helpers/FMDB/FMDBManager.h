//
//  FMDBManager.h
//  FMDB
//
//  Created by 李世超 on 2017/10/26.
//  Copyright © 2017年 李世超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NoteModel.h"
#import "FMResultSet.h"

@interface FMDBManager : NSObject

+(FMDBManager *) shareManager;

-(BOOL) insterDataWithModel :(NoteModel *) model;

-(FMResultSet *) backResults : (NSString *) conditions;

-(FMResultSet *) searchResults : (NSString *) conditions;

-(FMResultSet *) surveyResults : (NSString *) conditions;

-(FMResultSet *) lineResults : (NSString *) conditions;

-(FMResultSet *) selectFind : (NSString *) monthday;

-(FMResultSet *) selectGroup : (NSString *) category;

-(BOOL) deleteData;

- (BOOL) deleteFind:(int)unid;

- (BOOL) updateTag:(int)tag hour:(NSString *) hour;

- (BOOL) updateUid:(int)tag uid:(int)uid;

- (BOOL) updateStick:(int)stick uid:(int)uid;

- (BOOL) updateCategory:(NSString *)category hour:(NSString *)hour;

- (BOOL) updateHour:(int)tag hour:(NSString *) hour date:(NSString *)date uid:(int)uid;

- (BOOL) updateTime:(int)tag hour:(NSString *) hour date:(NSString *)date monthday:(NSString *)monthday uid:(int)uid;

- (BOOL) updateFind:(NoteModel *) model;

- (BOOL) updateImg:(NSData *) imgData unid:(int)unid;

@end
