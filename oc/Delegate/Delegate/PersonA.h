//
//  PersonA.h
//  Delegate
//
//  Created by ewr on 18/5/16.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

//委托人
#import <Foundation/Foundation.h>
//引入协议
#import "PresonB.h"
@interface PersonA : NSObject

//生名一个可以调用协议中方法的属性
@property (weak,nonatomic) id <buySth>delegate;
//定义了一个属性name
//@property(nonatomic,strong)NSString * name;

@end
