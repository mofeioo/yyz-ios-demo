//
//  Datas.h
//  tableDemo2
//
//  Created by ewr on 18/5/16.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Datas : NSObject
@property (nonatomic, copy) NSString *name; //名字

@property (nonatomic, copy) NSString *icon;//图片

@property (nonatomic, copy) NSString *desc;//描述

+(Datas *)initWithName:(NSString *)name andicon:(NSString *)icon anddees:(NSString *)desc;  @end
