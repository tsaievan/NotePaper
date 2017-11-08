//
//  Jastor.h
//  Jastor
//
//  Created by 李世超 on 17/7/11.
//  Copyright © 2017年 李世超. All rights reserved.
//

@interface Jastor : NSObject <NSCoding>

@property (nonatomic, copy) NSString *objectId;
+ (id)objectFromDictionary:(NSDictionary*)dictionary;

- (id)initWithDictionary:(NSDictionary *)dictionary;

- (NSMutableDictionary *)toDictionary;

@end
