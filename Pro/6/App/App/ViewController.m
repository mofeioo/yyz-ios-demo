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
    [self addLine:@"昵称：" addTextInput:@"请输入昵称" addX:0 addY:180];
    [self addLine:@"微信绑定："addTextInput:@"请输入微信名" addX:0 addY:250];
    [self addLine:@"邮箱" addTextInput:@"请输入邮箱地址" addX:0 addY:320];
    [self touxiang];
    [self upadtemessage];

    [self addLoginBtn];
}
-(void)nav{
    UIView *header= [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 80)];
    header.backgroundColor= [UIColor greenColor];
    [self.view addSubview:header];
    
    UILabel * labelx=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    labelx.text = @"个人信息";
    labelx.font=[UIFont systemFontOfSize:25];
    [labelx setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:labelx];
    
    UIButton * butonBack = [UIButton buttonWithType:UIButtonTypeCustom];
    butonBack.frame=CGRectMake(20, 40, 40, 20);
    UIImage * imgBack=[UIImage imageNamed:@"image/icon_arrowhead_yellowleft@2x"];
    [butonBack setBackgroundImage:imgBack forState:UIControlStateNormal];
    [self.view addSubview:butonBack];
    
    
    
    
}

-(void)touxiang{
    
    UIButton * buton2 = [UIButton buttonWithType:UIButtonTypeCustom];
    buton2.frame=CGRectMake(self.view.bounds.size.width/2-25, 100, 60, 60);
    UIImage * img2=[UIImage imageNamed:@"image/icon_particulars_wallet@2x.png"];
    [buton2 setBackgroundImage:img2 forState:UIControlStateNormal];
    [self.view addSubview:buton2];
}

-(void)addLine:(NSString *)lineStr addTextInput:(NSString *)inputStr addX:(int)x addY:(int)y{
    
    
    //标签
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(x+12, y-20, 200, 20)];
    label.text=lineStr;
    [self.view addSubview:label];
    
    
    //输入框
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(x, y, self.view.bounds.size.width, 45)];
    text.backgroundColor= [UIColor lightGrayColor];
    //text.alpha= 0.1;
    text.placeholder=inputStr;
    [self.view addSubview:text];
    
  
    
    
}

-(void)upadtemessage{
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(12, 400, 150, 20)];
    label.text=@"修改登录密码：";
    [self.view addSubview:label];
    
    
    //输入框
    UITextField *text1 = [[UITextField alloc]initWithFrame:CGRectMake(0, 420, self.view.bounds.size.width, 35)];
    text1.backgroundColor= [UIColor lightGrayColor];
    text1.placeholder=@"请输入原密码";
    [self.view addSubview:text1];
    
    UITextField *text2 = [[UITextField alloc]initWithFrame:CGRectMake(0, 455, self.view.bounds.size.width, 35)];
    text2.backgroundColor= [UIColor lightGrayColor];
    text2.placeholder=@"请输入原密码";
    [self.view addSubview:text2];
    
    UITextField *text3 = [[UITextField alloc]initWithFrame:CGRectMake(0, 490, self.view.bounds.size.width, 35)];
    text3.backgroundColor= [UIColor lightGrayColor];
    text3.placeholder=@"请输入原密码";
    [self.view addSubview:text3];}

-(void)addLoginBtn{
    
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [Button setBackgroundColor: [UIColor greenColor]];
    [Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [Button setFrame:CGRectMake((self.view.bounds.size.width-300)/2, 550, 300, 50)];
    // sets title for the button
    [Button setTitle:@"确定" forState:
     UIControlStateNormal];
    [Button.layer setCornerRadius:25];
    //切割超出圆角范围的子视图
    Button.layer.masksToBounds = YES;
    [self.view addSubview:Button];
    
    

    
    
}- (void)didReceiveMemoryWarning {
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
