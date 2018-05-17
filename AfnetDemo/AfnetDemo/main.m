//
//  main.m
//  AfnetDemo
//
//  Created by ewr on 18/5/17.
//  Copyright © 2018年 mofeioo. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <AFNetworking.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]init];
        
        [manager GET:@"http://localhost" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"success");
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"failure");
            
        }];
        
        
    }
    return 0;
}
