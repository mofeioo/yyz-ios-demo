//
//  Datas.m
//  tableDemo2
//
//  Created by ewr on 18/5/16.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "Datas.h"

@implementation Datas

//初始化方法
+(Datas *)initWithName:(NSString *)name andicon:(NSString *)icon anddees:(NSString *)desc{
    Datas *goods = [[Datas alloc]init];
    goods.name = name;
    goods.icon = icon;
    goods.desc = desc;
    return goods;
}@end
