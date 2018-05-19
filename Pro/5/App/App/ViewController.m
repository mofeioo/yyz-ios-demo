//
//  ViewController.m
//  UICollectionView
//
//  Created by ewr on 18/5/18.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>{
    NSMutableArray *_goodsarray;
    NSMutableArray *_imgarray;
    UICollectionView *_collectionView;}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self nav];
    //创建一个layout布局类
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
    //设置布局方向为垂直流布局
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    //设置每个item的大小为100*100
    layout.itemSize = CGSizeMake(100, 100);
    //创建collectionView 通过一个布局策略layout来创建
    UICollectionView * collect = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 250, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:layout];
    //代理设置
    collect.backgroundColor= [UIColor whiteColor];
    collect.delegate=self;
    collect.dataSource=self;
    //注册item类型 这里使用系统的类型
    [collect registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellid"];
    
    [self.view addSubview:collect];
    
        //    _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(20, 20, self.view.frame.size.width, self.view.frame.size.height)];
    
    _goodsarray = [@[] mutableCopy];
    _imgarray =[@[] mutableCopy];
    NSArray *imglist =@[@"image/icon_personal_tangerine@3x",@"image/icon_personal_grape@3x",@"image/icon_personal_pineapple@2x",@"image/icon_personal_pear@3x",@"image/icon_personal_watermelon@3x",@"image/icon_personal_pomegranate@3x",@"image/icon_personal_tangerine@3x"];
    NSArray *goodslist = @[@"订单管理",@"个人设置",@"地址管理",@"关于我们",@"使用帮助",@"期待反馈",@"版本更新"];
    for(int i=0;i<7;i++){
        
        _imgarray[i]=imglist[i];
        _goodsarray[i]=goodslist[i];
        //   NSLog(@"%@",goodslist);
        
    }
    
    
    [self footer];
    
}

-(void)nav{
    UIView *hearder = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    hearder.backgroundColor = [UIColor greenColor];
    [self.view addSubview:hearder];
    
    
    UIButton * buton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton1.frame=CGRectMake(40, 40, 50, 50);
    UIImage * img1=[UIImage imageNamed:@"image/icon_particulars_fruit@3x.png"];
    [buton1 setBackgroundImage:img1 forState:UIControlStateNormal];
    [self.view addSubview:buton1];
    
    UILabel *text1 =[[UILabel alloc]initWithFrame:CGRectMake(100, 50, 50, 30)];
    text1.text=@"Jenny";
    [self.view addSubview:text1];
    
    //1
    
    UILabel *text2 =[[UILabel alloc]initWithFrame:CGRectMake(60, 150, 60, 30)];
    text2.text=@"我的钱包";
    text2.font=[UIFont systemFontOfSize:14];
    [self.view addSubview:text2];
    //2
    UILabel *text3 =[[UILabel alloc]initWithFrame:CGRectMake(160, 150, 60, 30)];
    text3.text=@"我的红包";
    text3.font=[UIFont systemFontOfSize:14];
    [self.view addSubview:text3];
    //3
    UILabel *text4 =[[UILabel alloc]initWithFrame:CGRectMake(260, 150, 60, 30)];
    text4.text=@"我的积分";
    text4.font=[UIFont systemFontOfSize:14];
    [self.view addSubview:text4];
    
    
    UIButton * buton2 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton2.frame=CGRectMake(20, 150, 30, 30);
    UIImage * img2=[UIImage imageNamed:@"image/icon_particulars_wallet@2x.png"];
    [buton2 setBackgroundImage:img2 forState:UIControlStateNormal];
    [self.view addSubview:buton2];
    
    
    UIButton * buton3 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton3.frame=CGRectMake(120, 150, 30, 30);
    UIImage * img3=[UIImage imageNamed:@"image/icon_particulars_wallet@2x.png"];
    [buton3 setBackgroundImage:img3 forState:UIControlStateNormal];
    [self.view addSubview:buton3];
    
    
    UIButton * buton4 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton4.frame=CGRectMake(220, 150, 30, 30);
    UIImage * img4=[UIImage imageNamed:@"image/icon_particulars_wallet@2x.png"];
    [buton4 setBackgroundImage:img4 forState:UIControlStateNormal];
    [self.view addSubview:buton4];
    
}

-(void)footer{
    UIView *footView = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-70, self.view.bounds.size.width,70)];
    footView.backgroundColor= [UIColor whiteColor];
    //footView.alpha =0.8;
    [self.view addSubview:footView];
    
    UIButton * buton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton1.frame=CGRectMake(20, self.view.bounds.size.height-50, 35, 45);
    UIImage * img1=[UIImage imageNamed:@"image/icon_green_man@2x.png"];
    [buton1 setBackgroundImage:img1 forState:UIControlStateNormal];
    [self.view addSubview:buton1];
    
    
    UIButton * buton2 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton2.frame=CGRectMake(120, self.view.bounds.size.height-50, 35, 45);
    UIImage * img2=[UIImage imageNamed:@"image/icon_green_man@2x.png"];
    [buton2 setBackgroundImage:img2 forState:UIControlStateNormal];
    [self.view addSubview:buton2];
    
    
    UIButton * buton3 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton3.frame=CGRectMake(220, self.view.bounds.size.height-50, 35, 45);
    UIImage * img3=[UIImage imageNamed:@"image/icon_green_man@2x.png"];
    [buton3 setBackgroundImage:img3 forState:UIControlStateNormal];
    [self.view addSubview:buton3];
    
    
    UIButton * buton4 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton4.frame=CGRectMake(320, self.view.bounds.size.height-50, 35, 45);
    UIImage * img4=[UIImage imageNamed:@"image/icon_green_man@2x.png"];
    [buton4 setBackgroundImage:img4 forState:UIControlStateNormal];
    [self.view addSubview:buton4];
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
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(23, 60, 100, 40)];
    [label setLineBreakMode:NSLineBreakByWordWrapping];
    label.font=[UIFont systemFontOfSize:15];
    label.text =goods;
    [cell.contentView addSubview:label];
    
    //img
    NSString *imgs = [_imgarray objectAtIndex:indexPath.row];
    UIButton * buton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton1.frame=CGRectMake(23, 10, 50, 50);
    UIImage * img1=[UIImage imageNamed:imgs];
    [buton1 setBackgroundImage:img1 forState:UIControlStateNormal];
    [cell.contentView addSubview:buton1];
    
    
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
