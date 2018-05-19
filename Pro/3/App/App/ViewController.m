//
//  ViewController.m
//  App
//
//  Created by mofeio o on 18/5/18.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"
#import <SDCycleScrollView/SDCycleScrollView.h>
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSArray *_saintArray;
    UITableView *_tableView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self nav];
    [self addCenter];
    
    // 1 path 2 加载文件
    NSString *path = [[NSBundle mainBundle]pathForResource:@"goods.plist" ofType:nil];
    _saintArray = [NSArray arrayWithContentsOfFile:path];
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, self.view.frame.size.height)];
    
    //[self setupRefresh];
    //_tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
    //}];
    
    
    [self.view addSubview:_tableView];
    //分割线类型
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [self footer];
    
   
}

    
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _saintArray.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell * cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    NSDictionary *dic = [_saintArray objectAtIndex:indexPath.row];
    //img url
    NSString *image = [dic valueForKey:@"image"];
    //之前价格
    NSString *originalPrice = [dic valueForKey:@"originalPrice"];
    //当前价格
    NSString *currentPrice = [dic valueForKey:@"currentPrice"];
    //描述
    NSString *detail =[dic valueForKey:@"detail"];
    
    //商品图片
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:image]];
    imageView.frame = CGRectMake(0, 0, 100, 110);
    [cell.contentView addSubview:imageView];
    
    //购物车
    UIView *buyView = [[UIView alloc]initWithFrame:CGRectMake(300, 30, 100, 40)];
    buyView.backgroundColor= [UIColor greenColor];
    buyView.alpha = 0.7;
    [cell.contentView addSubview:buyView];
    
    
    UIImageView *buyImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image/icon_cart@3x"]];
    buyImg.frame = CGRectMake(320, 35, 30, 30);
    [cell.contentView addSubview:buyImg];
    
    //促销label
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(100, 0, 80, 25)];
    label1.text = @"【促销】";
    label1.font=[UIFont systemFontOfSize:15];
    label1.textColor=[UIColor redColor];
    [cell.contentView addSubview:label1];
    
    //描述
    UILabel * label2 = [[UILabel alloc]initWithFrame:CGRectMake(100, 0, 300, 40)];
    //        设置换行
    //        [label2 setLineBreakMode:NSLineBreakByWordWrapping];
    [label2 setNumberOfLines:2];
    label2.font=[UIFont systemFontOfSize:15];
    label2.text =detail;
    [cell.contentView addSubview:label2];
    
    //当前价格
    UILabel *label3 = [[UILabel alloc]initWithFrame:CGRectMake(110, 50, 80, 20)];
    label3.text = [@"¥：" stringByAppendingString:currentPrice];
    label3.font=[UIFont systemFontOfSize:15];
    label3.textColor=[UIColor redColor];
    [cell.contentView addSubview:label3];
    
    //原价
    UILabel *label4 = [[UILabel alloc]initWithFrame:CGRectMake(110, 80, 200, 20)];
    NSString *price =[@"原价：¥ " stringByAppendingString:originalPrice];
    
    //字符串富文本 删除线
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc]initWithString:price];
    [attrStr addAttribute:NSStrikethroughStyleAttributeName
                    value:@(NSUnderlinePatternSolid | NSUnderlineStyleSingle)
                    range:NSMakeRange(5, 4)];
    
    label4.font=[UIFont systemFontOfSize:12];
    label4.textColor=[UIColor lightGrayColor];
    label4.attributedText = attrStr;
    [cell.contentView addSubview:label4];
    
    
    cell.detailTextLabel.textColor = [UIColor grayColor];
    
    return cell;
    
}
// cell 指定的高度为100
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 110;
}

   

-(void)scroolView
{
    NSArray *imgGroup = [[NSArray alloc]initWithObjects:@"image/01.jpg",@"image/02.jpg",@"image/03.jpg", nil];
    
    SDCycleScrollView *ScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, self.view.bounds.size.width,170 ) imageNamesGroup:imgGroup];
    [self.view addSubview:ScrollView];}

-(void)nav{
    [self scroolView];
    
    
    
    UIButton * butonBack = [UIButton buttonWithType:UIButtonTypeCustom];
    butonBack.frame=CGRectMake(20, 30, 15, 20);
    UIImage * imgBack=[UIImage imageNamed:@"image/icon_login_back@2x"];
    [butonBack setBackgroundImage:imgBack forState:UIControlStateNormal];
    [self.view addSubview:butonBack];
    //输入框
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(140, 30, 220, 40)];
    text.backgroundColor= [UIColor blackColor];
    text.alpha=0.2;
    text.borderStyle =  UITextBorderStyleRoundedRect;
    text.layer.cornerRadius = 20.0;
    [self.view addSubview:text];
    
    UIImageView *leftImg = [[UIImageView alloc]initWithFrame:CGRectMake(20, 30,110,40)];
    [leftImg setImage:[UIImage imageNamed:@"image/icon_logo@3x"]];
    [leftImg setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:leftImg];
    
    UIImageView *searchImg = [[UIImageView alloc]initWithFrame:CGRectMake(330, 40,20,20)];
    [searchImg setImage:[UIImage imageNamed:@"image/icon_glass@3x"]];
    [searchImg setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:searchImg];
}


-(void)addCenter{
    UIButton * Lbutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Lbutton.frame=CGRectMake(20, 175, 150, 60);
    UIImage * Limg=[UIImage imageNamed:@"image/images_coconut@3x"];
    [Lbutton setBackgroundImage:Limg forState:UIControlStateNormal];
    [self.view addSubview:Lbutton];
    
    UIButton * Rbutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Rbutton.frame=CGRectMake(220, 175, 150, 60);
    UIImage * Rimg=[UIImage imageNamed:@"image/images_orange@3x"];
    [Rbutton setBackgroundImage:Rimg forState:UIControlStateNormal];
    [self.view addSubview:Rbutton];
    
    UILabel * labelx=[[UILabel alloc]initWithFrame:CGRectMake(12, 250,80, 30)];
    labelx.text = @"推荐产品";
    labelx.font=[UIFont systemFontOfSize:15];
    [labelx setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:labelx];
    
    
    //butonBack.frame=CGRectMake(20, 250, 80, 30);
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Button.titleLabel.font = [UIFont systemFontOfSize: 15.0];
    [Button setFrame:CGRectMake(280, 250, 80, 30)];
    [Button setTitle:@"更多产品 >" forState:
     UIControlStateNormal];
    [self.view addSubview:Button];
    
    
}
-(void)footer{
    UIView *footView = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-70, self.view.bounds.size.width,70)];
    footView.backgroundColor= [UIColor whiteColor];
    //footView.alpha =0.8;
    [self.view addSubview:footView];
    
    UIButton * buton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton1.frame=CGRectMake(20, self.view.bounds.size.height-50, 35, 45);
    UIImage * img1=[UIImage imageNamed:@"image/icon_green_home@3x"];
    [buton1 setBackgroundImage:img1 forState:UIControlStateNormal];
    [self.view addSubview:buton1];
    
    
    UIButton * buton2 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton2.frame=CGRectMake(120, self.view.bounds.size.height-50, 35, 45);
    UIImage * img2=[UIImage imageNamed:@"image/icon_green_home@3x"];
    [buton2 setBackgroundImage:img2 forState:UIControlStateNormal];
    [self.view addSubview:buton2];
    
    
    UIButton * buton3 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton3.frame=CGRectMake(220, self.view.bounds.size.height-50, 35, 45);
    UIImage * img3=[UIImage imageNamed:@"image/icon_green_home@3x"];
    [buton3 setBackgroundImage:img3 forState:UIControlStateNormal];
    [self.view addSubview:buton3];
    
    
    UIButton * buton4 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton4.frame=CGRectMake(320, self.view.bounds.size.height-50, 35, 45);
    UIImage * img4=[UIImage imageNamed:@"image/icon_green_home@3x"];
    [buton4 setBackgroundImage:img4 forState:UIControlStateNormal];
    [self.view addSubview:buton4];
    }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
