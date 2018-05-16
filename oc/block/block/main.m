//
//  main.m
//  block
//
//  Created by ewr on 18/5/15.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

//在b类中定义代码块，方法，然后在a类中调用

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
    //简单的block demo blok本质就是匿名函数，可以用作函数指针,作为函数的参数
        void (^MyBlock)()=^(){
            NSLog(@"ni shi da sb ");
        };
        MyBlock();
    }
    return 0;
}
