//
//  main.m
//  Delegate
//
//  Created by ewr on 18/5/16.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonA.h"
#import "PresonB.h"
//委托代理 某一个对象自己不做 委托别人去干
//先申明两个类 通过协议去调度别的对象去干事
//A让B去买东西
//组成： 协议（方法列表）
//      类A（委托人）： .h-> 一个申明的满足协议属性（建议用ID类型，用来调用其他类的方法）
//      类B（办事人）： .h-> 类的申明中加上协议名
//                    .m-> 实现协议方法

//协议

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //实例化对象AB
        PersonA *A =[[PersonA alloc]init];
        PresonB *B= [[PresonB alloc]init];
        A.delegate = B;
        [A.delegate buyShit];
        
    }
    
    return 0;
}
