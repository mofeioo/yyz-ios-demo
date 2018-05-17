//
//  ViewController.m
//  uiscrollview
//
//  Created by ewr on 18/5/17.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UIScrollView * scrollView;
@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    //1. 建立UIScrollView窗口，我们只打算用手机的上半屏显示图像，(这一步也可以在storyboard里完成)
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320 , 300)];
    //2.建立内容视图
    UIImageView * view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img.jpg"]];
//    self.scrollView.contentSize = view.bounds.size;
//    int width = view.bounds.size.width;
//    int height = view.bounds.size.height;
//    NSLog(@"%d%d",width,height);
    //3.将内容视图作为scrollView的子视图
    [self.scrollView addSubview: view];
    //4.当然了，还得把scrollView添加到视图结构中
    [self.view addSubview: self.scrollView];
}
// frame：是指scrollview的可视范围（可看见的区域）。

//contentsize：是其滚动范围。UIScrollView所有内容的尺⼨寸,也就是告诉 它滚动的范围(能滚多远,就滚多远)

//contentinset  ：为UIScrollView增加额外的滚动区域。（上，左，下，右）逆时针。

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
