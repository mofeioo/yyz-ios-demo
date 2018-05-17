//
//  ViewController.m
//  strDemo
//
//  Created by ewr on 18/5/17.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //字符串富文本
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, 300, 40)];
    //label.text=@"我要改变世界！";
    
    //首先要创建一个带有属性的字符串NSMutableAttributedString
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:@"我要改变世界！"];
    //改变字体大小
    [attrString addAttribute:NSFontAttributeName
                    value:[UIFont systemFontOfSize:30.0f]
                    range:NSMakeRange(4, 3)];
    [attrString addAttribute:NSStrikethroughStyleAttributeName
                    value:@(NSUnderlinePatternSolid | NSUnderlineStyleSingle)
                    range:NSMakeRange(1, 3)];

    label.attributedText=attrString;
    [self.view addSubview:label];
    
    //color
    [attrString addAttribute:NSForegroundColorAttributeName
value:[UIColor redColor]
range:NSMakeRange(4, 3)];
    
    //font bgcolor
    [attrString addAttribute:NSBackgroundColorAttributeName
                    value:[UIColor redColor]
                    range:NSMakeRange(4, 3)];
   
    //空心字
    [attrString addAttribute:NSStrokeColorAttributeName
                    value:[UIColor redColor]
                    range:NSMakeRange(4, 3)];  // 设置描边颜色 要和NSStrokeWidthAttributeName设置描边宽度一起使用
    [attrString addAttribute:NSStrokeWidthAttributeName
                    value:@1.5
                    range:NSMakeRange(4, 3)];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
