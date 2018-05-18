//
//  ViewController.m
//  UICollectionView
//
//  Created by ewr on 18/5/18.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"
#import <SDCycleScrollView/SDCycleScrollView.h>
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>{
    NSMutableArray *_goodsarray;
    UICollectionView *_collectionView;}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建一个layout布局类
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
    //设置布局方向为垂直流布局
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    //设置每个item的大小为100*100
    layout.itemSize = CGSizeMake(120, 120);
    //创建collectionView 通过一个布局策略layout来创建
    UICollectionView * collect = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 220, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:layout];
    //代理设置
    collect.backgroundColor= [UIColor whiteColor];
    collect.delegate=self;
    collect.dataSource=self;
    //注册item类型 这里使用系统的类型
    [collect registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellid"];
    
    [self.view addSubview:collect];
    
    NSArray *imgGroup = [[NSArray alloc]initWithObjects:@"image/01.jpg",@"image/02.jpg",@"image/03.jpg", nil];
    
    SDCycleScrollView *ScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 180) imageNamesGroup:imgGroup];
    
    [self.view addSubview:ScrollView];
//    _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(20, 20, self.view.frame.size.width, self.view.frame.size.height)];
    
    _goodsarray = [@[] mutableCopy];
    for(int i=0;i<20;i++){
        NSString *goodslist = [NSString stringWithFormat:@"%@%d",@"商品",i];
        
        _goodsarray[i]=goodslist;
     //   NSLog(@"%@",goodslist);
        
    }
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
//返回每个分区的item个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _goodsarray.count;
}
//返回每个item
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell * cell  = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellid" forIndexPath:indexPath];
    NSString *goods = [_goodsarray objectAtIndex:indexPath.row];
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(45, 45, 100, 40)];
         [label setLineBreakMode:NSLineBreakByWordWrapping];
    label.font=[UIFont systemFontOfSize:15];
    label.text =goods;
    [cell.contentView addSubview:label];
    
    
    cell.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
