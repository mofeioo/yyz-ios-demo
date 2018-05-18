//
//  ViewController.m
//  SDCScrollView
//
//  Created by ewr on 18/5/18.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"
#import <SDCycleScrollView/SDCycleScrollView.h>
//#import <UIImageView+WebCache.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *imgGroup = [[NSArray alloc]initWithObjects:@"image/1.jpg",@"image/2.jpg",@"image/3.jpg", nil];
    
  SDCycleScrollView *ScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(20, 20, 200, 200) imageNamesGroup:imgGroup];
    
    [self.view addSubview:ScrollView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
