//
//  main.m
//  Dict
//
//  Created by ewr on 18/5/17.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //字典
    //申明 key->value
        NSDictionary *dict =@{@"name":@"sb",@"age":@"19",@"hobbit":@"eat shit"};
        //int cnt = [dict count];
       // 该方法会返回一个NSInteger类型的变量，我们也可以直接使用int类型的变量接收 (int)
    //通过key查看value
        NSLog(@"%@",dict[@"name"]);
        NSLog(@"%@",[dict valueForKey:@"age"]);
        // [ objectForKey]
        
    //所有value
        NSLog(@"%@",[dict allValues]);
        
    //所有key [dict allKeys];
        
        //可变字典
        //可变字典，就意味着我们可以在后续操作过程中向字典中添加或者删除“键值对”，因此，最开始的时候我们可以创建一个空字典，常用的方法有：
        //NSMutableDictionary *mdict = [@{} mutableCopy];
        //NSMutableDictionary *mdict = [NSMutableDictionary dictionary];
        NSMutableDictionary *mdict = [@{} mutableCopy];
        //添加数据 因为字典是无序的，因此不用指定插入的位置。如果字典中已经存在对应的KEY值，那么就直接替换掉该KEY对应的值，也就是相当于修改操作；如果不存在，则将该“键值对”添加到字典当中。
        [mdict setObject:@"dasb" forKey:@"name"];
        [mdict setObject:@"13" forKey:@"age"];
        [mdict removeObjectForKey:@"age"];
        //[dic removeAllObject];
        
        for(NSString *item in [mdict allValues]){
            NSLog(@"%@",item);
        }
        
    }
    return 0;
}
