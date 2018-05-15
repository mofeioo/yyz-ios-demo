//
//  ViewController.m
//  tableDemo
//
//  Created by mofeio o on 18/5/11.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSArray *saintArray;
    UITableView *tableView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 1 path 2 加载文件
    NSString *path = [[NSBundle mainBundle]pathForResource:@"saint.plist" ofType:nil];
    saintArray = [NSArray arrayWithContentsOfFile:path];
    
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, 414, 600)];
    [self.view addSubview:tableView];
    
    tableView.dataSource = self;
    tableView.delegate = self;
}
//pragma mark - TableView Delegate
// 部分 组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
// 多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
// 每行内容
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellID = @"www.imooc.com.tb";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    NSDictionary *dic = [saintArray objectAtIndex:indexPath.row];
    NSString *name = [dic valueForKey:@"name"];
    NSString *image = [dic valueForKey:@"image"];
    NSString *detail = [dic valueForKey:@"detail"];
    
    cell.textLabel.text = name;
    cell.imageView.image = [UIImage imageNamed:image];
    cell.detailTextLabel.text = detail;
    
    cell.detailTextLabel.textColor = [UIColor grayColor];
    
    return cell;
    
}



//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return saintArray.count;
//}


// 使用cell 检查缓存cell 有 cell 没有new
// 1 性能 2 面试

// cell 指定的高度为100

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
