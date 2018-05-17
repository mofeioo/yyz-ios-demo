//
//  main.m
//  String
//
//  Created by ewr on 18/5/17.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //字符串
        
        //格式化字符串 不可变字符串
        //NSString *string = [NSString stringWithFormat:@"测试文字"];
        //字符串截取
        
    NSString *str1 =@"I want change world!";
        //截取某个位置的字符串
        char str2 =[str1 characterAtIndex:3];
        NSLog(@"%c",str2);
        
        
        
        //截取子串
        //先设置截取的起始点和长度
        NSRange range = NSMakeRange(3, 6);
        NSString * str3 = [str1 substringWithRange:range];
        NSLog(@"%@",str3);
        
       //从某一位开始截取
        NSLog(@"%@",[str1 substringFromIndex:5]);
        
       //从开头截取
        NSLog(@"%@",[str1 substringToIndex:8]);
        
        
        //字符串拼接
        NSString *str4 = [str1 stringByAppendingString:@" yes i can !"];
        NSLog(@"%@",str4);
        
        
        //申明成员变量字符串 使用 strong copy
        //一般建议使用copy
        //复制可变字符串 copy会复制内容，重新开辟内存，而strong还是指向原来内存
        
        
        
        
        
        
        
    }
    return 0;
}
