//
//  ViewController.m
//  1UITableView
//
//  Created by Jones on 10/7/16.
//  Copyright © 2016 Jones. All rights reserved.
//
// 1 UITableView = 表格＋视图
// 2 UITableView cell N行单列
// 3 滚动 ：UIScrollView
#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tableView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, 414, 600)];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 414, 600)];
    imageView.image = [UIImage imageNamed:@"1.jpg"];
    imageView.contentMode = UIViewContentModeScaleToFill;
    tableView.backgroundView = imageView;
    
    [self.view addSubview:tableView];
    //  dataSource：数据源 delegate：控制
    tableView.dataSource = self;
    tableView.delegate = self;
    
}
#pragma mark - TableView Delegate
// 部分 组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
// 多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
// 每行内容
-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text = @"hello";
    
    
    NSString *text2 =  @"sbsbsbs";
    cell.textLabel.text=text2;
    
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
