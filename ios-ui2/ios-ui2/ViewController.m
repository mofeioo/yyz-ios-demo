//
//  ViewController.m
//  ios-ui2
//
//  Created by mofeio o on 18/5/10.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //ScrollView
    UIScrollView * scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(0, 100, 300,300);//UIScrollView大小
    [self.view addSubview:scrollView];
//    scrollView.backgroundColor = [UIColor orangeColor];
    
    UIImage * image = [UIImage imageNamed:@"image/111.jpg"];
    UIImageView * imageView = [[UIImageView alloc] initWithImage:image];
    [scrollView addSubview:imageView];
    
    //自动调整宽高
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    scrollView.contentSize = imageView.bounds.size;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
