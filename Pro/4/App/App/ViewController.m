//
//  ViewController.m
//  App
//
//  Created by mofeio o on 18/5/18.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSArray *_saintArray;
    UITableView *_tableView;
    int i;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self nav];
    //[self addCenter];
    
    // 1 path 2 加载文件
    NSString *path = [[NSBundle mainBundle]pathForResource:@"buy.plist" ofType:nil];
    _saintArray = [NSArray arrayWithContentsOfFile:path];
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 120, self.view.frame.size.width, self.view.frame.size.height)];
    
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
    imageView.frame = CGRectMake(35, 15, 80, 80);
    [cell.contentView addSubview:imageView];
    

    
    
    
    i=0;
    
    UIButton *btn1 =[[UIButton alloc]initWithFrame:CGRectMake(10, 45, 20, 20)];
    UIImage * imgBack=[UIImage imageNamed:@"image/icon_constituency_noselect@2x"];
    [btn1 setBackgroundImage:imgBack forState:UIControlStateNormal];
    [cell.contentView addSubview:btn1];
    
    [[btn1
      
      rac_signalForControlEvents:UIControlEventTouchUpInside]
     
     subscribeNext:^(id x) {
         
         
                  if(i==0){
         
                      UIImage * imgBack=[UIImage imageNamed:@"image/icon_constituency_select@2x"];
                      [btn1 setBackgroundImage:imgBack forState:UIControlStateNormal];
                      i+=1;
        
         
          NSLog(@"%d",i);                  }
         
                  else{
         
         
                      UIImage * imgBack=[UIImage imageNamed:@"image/icon_constituency_noselect@2x"];
                      [btn1 setBackgroundImage:imgBack forState:UIControlStateNormal];
         
                      i-=1;
                       NSLog(@"%d",i);
                            }
     
     }];
    
    [cell.contentView addSubview:btn1];
    
    
    //修改

    UIImageView *buyImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image/icon_particulars_pen@3x"]];
    buyImg.frame = CGRectMake(320, 35, 30, 30);
    [cell.contentView addSubview:buyImg];
    
    //描述
    UILabel * label2 = [[UILabel alloc]initWithFrame:CGRectMake(150, 0, 200, 40)];
    //        设置换行
    //        [label2 setLineBreakMode:NSLineBreakByWordWrapping];
    [label2 setNumberOfLines:2];
    label2.font=[UIFont systemFontOfSize:15];
    label2.text =detail;
    [cell.contentView addSubview:label2];
    
    //当前价格
    UILabel *label3 = [[UILabel alloc]initWithFrame:CGRectMake(160, 50, 80, 20)];
    label3.text = [@"¥：" stringByAppendingString:currentPrice];
    label3.font=[UIFont systemFontOfSize:15];
    label3.textColor=[UIColor redColor];
    [cell.contentView addSubview:label3];
    
    //原价
    UILabel *label4 = [[UILabel alloc]initWithFrame:CGRectMake(160, 80, 200, 20)];
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




-(void)nav{
    UIView *heardView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 100)];
    heardView.backgroundColor= [UIColor greenColor];
    [self.view addSubview:heardView];
    UILabel * labelx=[[UILabel alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-40, 40,80, 30)];
    labelx.text = @"购物车";
    labelx.font=[UIFont systemFontOfSize:25];
    [labelx setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:labelx];}


-(void)addCenter{
    
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
    
    UIView *footView1 = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-120, self.view.bounds.size.width,50)];
    footView1.backgroundColor= [UIColor whiteColor];
    //footView.alpha =0.8;
    [self.view addSubview:footView1];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-70, self.view.bounds.size.width, 20)];
    
    label.text=@"________________________________________________________";
    [self.view addSubview:label];
    
    
    UIView *footView = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-70, self.view.bounds.size.width,70)];
    footView.backgroundColor= [UIColor whiteColor];
    //footView.alpha =0.8;
    [self.view addSubview:footView];
    
    UIButton * buton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton1.frame=CGRectMake(20, self.view.bounds.size.height-50, 35, 45);
    UIImage * img1=[UIImage imageNamed:@"image/icon_green_shoppingcart@2x.png"];
    [buton1 setBackgroundImage:img1 forState:UIControlStateNormal];
    [self.view addSubview:buton1];
    
    
    UIButton * buton2 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton2.frame=CGRectMake(120, self.view.bounds.size.height-50, 35, 45);
    UIImage * img2=[UIImage imageNamed:@"image/icon_green_shoppingcart@2x.png"];
    [buton2 setBackgroundImage:img2 forState:UIControlStateNormal];
    [self.view addSubview:buton2];
    
    
    UIButton * buton3 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton3.frame=CGRectMake(220, self.view.bounds.size.height-50, 35, 45);
    UIImage * img3=[UIImage imageNamed:@"image/icon_green_shoppingcart@2x.png"];
    [buton3 setBackgroundImage:img3 forState:UIControlStateNormal];
    [self.view addSubview:buton3];
    
    
    UIButton * buton4 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton4.frame=CGRectMake(320, self.view.bounds.size.height-50, 35, 45);
    UIImage * img4=[UIImage imageNamed:@"image/icon_green_shoppingcart@2x.png"];
    [buton4 setBackgroundImage:img4 forState:UIControlStateNormal];
    [self.view addSubview:buton4];
    }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
