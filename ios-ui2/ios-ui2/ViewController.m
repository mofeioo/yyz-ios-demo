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
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    scrollView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:scrollView];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor blueColor];
    button.frame = CGRectMake(10, 10, self.view.bounds.size.width - 20, 100);
    [scrollView addSubview:button];
    // 1. 默认 CGSizeZero == CGSizeMake(0, 0)
    // contentSize 设置可以滚动的范围
    scrollView.contentSize = CGSizeMake(1000, 1000);
    // 2. 默认 CGPointZero
    // contentOffset 偏移量, 滚动的位置
    // 不设置contentSize, contentOffset也可以改变
    // 问题: 改变contentOffset什么变了?
    // 答案: 改变contentOffset, 实质上是对scrollView的bounds进行了改变.(改变子视图的坐标)
    NSLog(@"scrollView frame is : %@", NSStringFromCGRect(scrollView.frame));
    NSLog(@"scrollView bounds is : %@", NSStringFromCGRect(scrollView.bounds));
    scrollView.contentOffset = CGPointMake(0, 500);
    NSLog(@"scrollView frame is : %@", NSStringFromCGRect(scrollView.frame));
    NSLog(@"scrollView bounds is : %@", NSStringFromCGRect(scrollView.bounds));
    // 3. contentInset
    // 添加滚动区域四周的滚动范围
    // UIEdgeInsets age = {10, 10, 10, 10};
    scrollView.contentInset = UIEdgeInsetsMake(10, 10, 10, 10);
    // 4. directionalLockEnabled
    // 锁定垂直或水平滚动(45度角, 锁会失效)
    scrollView.directionalLockEnabled = YES;
    // 5. bounces 回弹效果
    // 边缘弹动动画关闭 NO
    // scrollView.bounces = NO;
    // 6. alwaysBounceVertical 在没有垂直方向的滚动范围时(0), 保证垂直方向的回弹效果
    scrollView.alwaysBounceVertical = YES;
    // 7. alwaysBounceHorizontal 在没有水平方向的滚动范围时(0), 保证垂直方向的回弹效果
    scrollView.alwaysBounceHorizontal = YES;
    // 8. pagingEnabled 按页滚动
    scrollView.pagingEnabled = YES;
    // 9. scrollEnabled 滚动视图能否滚动, 默认为YES, NO(不可以滚)
    scrollView.scrollEnabled = YES;
    // 10. showsHorizontalScrollIndicator 是否显示水平滚动指示器
    scrollView.showsHorizontalScrollIndicator = YES;
    // 11. showsVerticalScrollIndicator 是否显示垂直滚动的指示器
    scrollView.showsVerticalScrollIndicator = YES;
    // 12. 滚动指示器的边距
    scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 100, 0, 0);
    // 13. indicatorStyle 滚动指示器的颜色(深色背景丶浅色背景)
    scrollView.indicatorStyle = UIScrollViewIndicatorStyleBlack;
    // 14.
    // scrollView.tracking 用户有没有开始拖动
    // scrollView.tracking
    // scrollView.dragging 用户是否正在拖动
    // scrollView.dragging
    // scrollView.decelerating 是否减速中
    // scrollView.decelerating
    // 14. scrollsToTop 滚动视图, 双击状态栏手势是否存在
    scrollView.scrollsToTop = NO;
    // 15. 代理
    scrollView.delegate = self;
    // 16. 键盘消失模式(一般用这个UIScrollViewKeyboardDismissModeOnDrag)
    scrollView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
//    // 测试:
//    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 300, kScreenWidth - 20, 200)];
//    textField.backgroundColor = [UIColor cyanColor];
//    [scrollView addSubview:textField];
    // 17. 缩放系数
    // 如果想进行视图放大缩小, 必须实现viewForZoomingInScrollview:
    scrollView.minimumZoomScale = 2;
    scrollView.maximumZoomScale = 6;
}
// 与其想要缩放的子视图绑定, scrollView的contentSize会跟随这个子视图改变
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return scrollView.subviews.firstObject;
}
// 滚动视图滚动, 就会执行
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    // tracking 用户触摸
    if (scrollView.tracking) {
        NSLog(@"正在拖动滚动");
    } else {
        NSLog(@"自己滚动中");
    }
    // dragging 用户开始滑动
    if (scrollView.dragging) {
        NSLog(@"");
    }
    // decelerating 用户触摸结束
    if (scrollView.decelerating) {
        NSLog(@"");
    }
}
// 将要开始拖拽
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    // NSLog(@"开始拖拽");
}
// 将要结束拖拽
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    
}
// 将要开始进行减速
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    // NSLog(@"开始减速");
}
// 已经结束减速
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    //NSLog(@"结束减速");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
