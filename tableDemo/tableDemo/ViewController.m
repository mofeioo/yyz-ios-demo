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
    NSArray *_saintArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle]pathForResource:@"goods.plist" ofType:nil];
    _saintArray = [NSArray arrayWithContentsOfFile:path];
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, 414, 600)];
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
    return _saintArray.count;
}
// 每行内容
-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    NSDictionary *dic = [_saintArray objectAtIndex:indexPath.row];
    //    NSString *name = [dic valueForKey:@"name"];
    NSString *image = [dic valueForKey:@"image"];
    //    NSString *detail = [dic valueForKey:@"detail"];
    NSString *la2 =[dic valueForKey:@"la2"];
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(100, 0, 80, 25)];
    label1.text = @"【特价】";
    label1.font=[UIFont systemFontOfSize:15];
    label1.textColor=[UIColor redColor];
    [cell.contentView addSubview:label1];
    
    UILabel * label2 = [[UILabel alloc]initWithFrame:CGRectMake(100, 0, 300, 40)];
    //        设置换行
    //        [label2 setLineBreakMode:NSLineBreakByWordWrapping];
    [label2 setNumberOfLines:2];
    label2.font=[UIFont systemFontOfSize:15];
    //    label2.text = @"                最新款xxx，不要三四千，不要一两千，只要998，对你没有听错只要998就能把xxx带回家";
    label2.text =la2;
    [cell.contentView addSubview:label2];
    
    UILabel *label3 = [[UILabel alloc]initWithFrame:CGRectMake(110, 60, 80, 20)];
    label3.text = @"¥：998";
    label3.font=[UIFont systemFontOfSize:15];
    //        label3.textColor=[UIColor lightGrayColor];
    label3.textColor=[UIColor redColor];
    [cell.contentView addSubview:label3];
    
    UILabel *label4 = [[UILabel alloc]initWithFrame:CGRectMake(110, 80, 150, 20)];
    label4.text = @"市场价： ¥：3999";
    label4.font=[UIFont systemFontOfSize:12];
    label4.textColor=[UIColor lightGrayColor];
    //        label4.textColor=[UIColor redColor];
    [cell.contentView addSubview:label4];
    
    UILabel *label5 = [[UILabel alloc]initWithFrame:CGRectMake(182, 75, 100, 20)];
    label5.text = @"______";
    label5.font=[UIFont systemFontOfSize:12];
    label5.textColor=[UIColor lightGrayColor];
    //        label4.textColor=[UIColor redColor];
    [cell.contentView addSubview:label5];
    
    //    cell.textLabel.text = name;
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:image]];
    imageView.frame = CGRectMake(0, 0, 100, 100);
    [cell.contentView addSubview:imageView];
    //    cell.detailTextLabel.text = detail;
    
    cell.detailTextLabel.textColor = [UIColor grayColor];
    
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end