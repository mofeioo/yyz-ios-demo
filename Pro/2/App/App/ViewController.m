//
//  ViewController.m
//  App
//
//  Created by mofeio o on 18/5/18.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <MBProgressHUD/MBProgressHUD.h>
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self nav];
    [self addLine:@"_______________________________________" addTextInput:@"手机号" addX:30 addY:100];
    [self addLine:@"________________________"addTextInput:@"验证码" addX:30 addY:150];
    [self addLine:@"_______________________________________" addTextInput:@"新密码" addX:30 addY:200];
    [self addLine:@"_______________________________________" addTextInput:@"再次输入密码" addX:30 addY:250];
    [self addLine:@"_______________________________________" addTextInput:@"邀请码" addX:30 addY:300];
    
    [self addLoginBtn];
    [self toLogin:@"去登录" addText:@"已有账号，" addX:60 addY:550];
}
-(void)nav{
    UIView *header= [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 80)];
    header.backgroundColor= [UIColor greenColor];
    [self.view addSubview:header];
    
    UILabel * labelx=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    labelx.text = @"注册";
    labelx.font=[UIFont systemFontOfSize:25];
    [labelx setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:labelx];
    
    UIButton * butonBack = [UIButton buttonWithType:UIButtonTypeCustom];
    butonBack.frame=CGRectMake(20, 30, 15, 20);
    UIImage * imgBack=[UIImage imageNamed:@"image/icon_login_back@2x"];
    [butonBack setBackgroundImage:imgBack forState:UIControlStateNormal];
    [self.view addSubview:butonBack];
}

-(void)addLine:(NSString *)lineStr addTextInput:(NSString *)inputStr addX:(int)x addY:(int)y{
    
    //输入框
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(x+10, y+20, 300, 30)];
    text.placeholder=inputStr;
    [self.view addSubview:text];
    
    //输入框下划线
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(x+12, y+30, 400, 30)];
    label.text=lineStr;
    label.textColor = [UIColor lightGrayColor];
    [self.view addSubview:label];
    
    
}

-(void)addLoginBtn{
    
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [Button setBackgroundColor: [UIColor greenColor]];
    [Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [Button setFrame:CGRectMake((self.view.bounds.size.width-300)/2, 380, 300, 50)];
    // sets title for the button
    [Button setTitle:@"注册" forState:
     UIControlStateNormal];
    [Button.layer setCornerRadius:25];
    //切割超出圆角范围的子视图
    Button.layer.masksToBounds = YES;
    [self.view addSubview:Button];
    
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame=CGRectMake(220, 175, 100, 30);
    [button setTitle:@"手机验证码" forState:
     UIControlStateNormal];
    [button setBackgroundColor: [UIColor greenColor]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button.layer setCornerRadius:15];
    //切割超出圆角范围的子视图
    button.layer.masksToBounds = YES;
    [self.view addSubview:button];
    
    
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
