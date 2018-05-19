//
//  ViewController.m
//  App
//
//  Created by mofeio o on 18/5/18.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self nav];
    [self message];

    
}
-(void)nav{
    UIView *header= [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 80)];
    header.backgroundColor= [UIColor greenColor];
    [self.view addSubview:header];
    
    UILabel * labelx=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    labelx.text = @"关于我们";
    labelx.font=[UIFont systemFontOfSize:25];
    [labelx setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:labelx];
    
    UIButton * butonBack = [UIButton buttonWithType:UIButtonTypeCustom];
    butonBack.frame=CGRectMake(20, 40, 40, 20);
    UIImage * imgBack=[UIImage imageNamed:@"image/icon_arrowhead_yellowleft@2x"];
    [butonBack setBackgroundImage:imgBack forState:UIControlStateNormal];
    [self.view addSubview:butonBack];
    
    
    
    
}



-(void)message{
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 40, self.view.bounds.size.width-80,200)];
    label.lineBreakMode = UILineBreakModeWordWrap;
    label.numberOfLines = 0;
    label.font=[UIFont systemFontOfSize:12];
    
    label.text=@"  习近平：必须树立和践行绿水青山就是金山银山的理念，坚持节约资源和保护环境的基本国策，像对待生命一样对待生态环境，统筹山水林田湖草系统治理，实行最严格的生态环境保护制度，形成绿色发展方式和生活方式，坚定走生产发展、生活富裕、生态良好的文明发展道路，建设美丽中国，为人民创造良好生产生活环境，为全球生态安全作出贡献。";
    [self.view addSubview:label];
    
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(20, 390, self.view.bounds.size.width-60,150)];
    label2.lineBreakMode = UILineBreakModeWordWrap;
    label2.numberOfLines = 0;
    label2.font=[UIFont systemFontOfSize:13];
    
    label2.text=@"  习近平：必须树立和践行绿水青山就是金山银山的理念，坚持节约资源和保护环境的基本国策，像对待生命一样对待生态环境，统筹山水林田湖草系统治理，实行最严格的生态环境保护制度，形成绿色发展方式和生活方式，坚定走生产发展、生活富裕、生态良好的文明发展道路，建设美丽中国，为人民创造良好生产生活环境，为全球生态安全作出贡献。";
    [self.view addSubview:label2];
    
    
    
    
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(20, 230, self.view.bounds.size.width-80,150)];
    label1.lineBreakMode = UILineBreakModeWordWrap;
    label1.numberOfLines = 0;
    label1.font=[UIFont systemFontOfSize:12];
    
    label1.text=@"  习近平：必须树立和践行绿水青山就是金山银山的理念，坚持节约资源和保护环境的基本国策，像对待生命一样对待生态环境，统筹山水林田湖草系统治理，实行最严格的生态环境保护制度，形成绿色发展方式和生活方式，坚定走生产发展、生活富裕、生态良好的文明发展道路，建设美丽中国，为人民创造良好生产生活环境，为全球生态安全作出贡献。";
    [self.view addSubview:label1];
    
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)toLogin:(NSString *)btnText addText:(NSString *)text addX:(int)x addY:(int)y{
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(x, y, 70, 30)];
    label.text=text;
    label.textColor = [UIColor lightGrayColor];
    label.font = [UIFont systemFontOfSize: 13.0];
    [self.view addSubview:label];
    
    
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Button.titleLabel.font = [UIFont systemFontOfSize: 13.0];
    [Button setTitleColor:[UIColor orangeColor]forState:UIControlStateNormal];
    [Button setFrame:CGRectMake(x+60, y, 60, 30)];
    [Button setTitle:btnText forState:
     UIControlStateNormal];
    [self.view addSubview:Button];
    
    
    UIImageView *Img = [[UIImageView alloc]initWithFrame:CGRectMake(x-40, y+5,30,20)];
    [Img setImage:[UIImage imageNamed:@"image/icon_arrowhead_yellowleft@3x"]];
    [Img setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:Img];
}
@end
