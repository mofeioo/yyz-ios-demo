//
//  ViewController.m
//  uitabel
//
//  Created by ewr on 18/5/17.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

// 1 数据加载 2 UITableView 3 数据展示 MVC
#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSArray *_saintArray;
    UITableView *_tableView;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1 path 2 加载文件
    NSString *path = [[NSBundle mainBundle]pathForResource:@"saint.plist" ofType:nil];
    _saintArray = [NSArray arrayWithContentsOfFile:path];
    
    UILabel * labelx=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    labelx.text = @"商品列表";
    labelx.font=[UIFont systemFontOfSize:25];
    [labelx setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:labelx];
    
    UIButton * butonBack = [UIButton buttonWithType:UIButtonTypeCustom];
    butonBack.frame=CGRectMake(20, 30, 15, 20);
    UIImage * imgBack=[UIImage imageNamed:@"icon_login_back"];
    [butonBack setBackgroundImage:imgBack forState:UIControlStateNormal];
    [self.view addSubview:butonBack];
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_tableView];
    //分割线类型
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.dataSource = self;
    _tableView.delegate = self;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _saintArray.count;
}
// 使用cell 检查缓存cell 有 cell 没有new
// 1 性能 2 面试
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //    static NSString *cellID = @"123";
    //
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    //    if (cell == nil) {
    //        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    //        NSLog(@"当前cell不可用 %ld",(long)indexPath.row);
    //    }
    UITableViewCell * cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
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
// cell 指定的高度为100
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 110;
}
@end