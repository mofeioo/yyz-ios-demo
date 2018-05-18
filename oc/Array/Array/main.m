//
//  main.m
//  Array
//
//  Created by ewr on 18/5/17.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //数组 存进数组的必须都是对象
        //一种申明方法
        NSArray *nameArray = [[NSArray alloc]initWithObjects:@"boob",@"lili",@"sb",@"wanger", nil];
        //for in 快速遍历
        
        for(NSString *item in nameArray)
        {
            NSLog(@"这个叫人：%@",item);
        }
        NSLog(@"%@",[nameArray firstObject]);
        NSLog(@"%@",[nameArray lastObject]);
        NSLog(@"%@",[nameArray objectAtIndex:2]);
        NSLog(@"%@",nameArray[2]);
        NSLog(@"%lu",nameArray.count );
        //常用操作
    }
    NSMutableArray *_goodsarray = [@[] mutableCopy];
    for(int i=0;i<20;i++){
       
        _goodsarray[i]=@"商品";
        
    }
    NSLog(@"%@",_goodsarray);
    return 0;
}
