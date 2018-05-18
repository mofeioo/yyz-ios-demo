//
//  ViewController.m
//  Login
//
//  Created by ewr on 18/5/18.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loginTitle];
    
    
    [self addLine:@"image/icon_login_phone@2x.png" addLabel:@"__________________________________________" addTextInput:@"请输入电话号码" addX:40 addY:120];
    
    
    [self addLine:@"image/icon_login_auth_code@2x.png" addLabel:@"_______________________________" addTextInput:@"请输入验证码" addX:40 addY:170];
    
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [Button setBackgroundColor: [UIColor redColor]];
    [Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [Button setFrame:CGRectMake(305, 170, 80, 30)];
    // sets title for the button
    [Button setTitle:@"发送验证码" forState:
     UIControlStateNormal];
    [self.view addSubview:Button];
    
    
    [self addLine:@"image/icon_login_name@2x.png" addLabel:@"__________________________________________" addTextInput:@"请输入真实姓名" addX:40 addY:220];
    
    [self addLine:@"image/icon_login_Invitation_code@2x.png" addLabel:@"__________________________________________" addTextInput:@"请输入推荐码" addX:40 addY:270];
    
    
    [self addLine:@"image/icon_login_password@2x.png" addLabel:@"__________________________________________" addTextInput:@"请输入6~18位密码" addX:40 addY:320];
    [self passwdImg:@"image/icon_login_visible@2x.png" passwdImg2:@"image/icon_logim_invisible@2x.png" addX:350 addY:320];
    
    
    
    [self addLine:@"image/icon_login_password@2x.png" addLabel:@"__________________________________________" addTextInput:@"请再次输入密码" addX:40 addY:370];
    [self passwdImg:@"image/icon_login_visible@2x.png" passwdImg2:@"image/icon_logim_invisible@2x.png" addX:350 addY:370];
    
    [self addLoginBtn];
    
    [self selectLine];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//注册标题部分
-(void)loginTitle{
    //注册标题
    UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(0, 40, self.view.bounds.size.width, 20)];
    title.text=@"注册";
    title.textAlignment = NSTextAlignmentCenter;
    title.font = [UIFont systemFontOfSize:22];//设置Label上文字的大小 默认为17
    //    text.textColor = [UIColor lightGrayColor];
    [self.view addSubview:title];
    
    //分割线
    UIView *line_view = [[UIView alloc] initWithFrame:CGRectMake(0, 75, 460,1 )];
    [line_view setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:line_view];
    
    //< image
    
    UIImageView *backImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 40, 18, 26)];
    [backImg setImage:[UIImage imageNamed:@"image/icon_login_back@2x.png"]];
    [backImg setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:backImg];
    
    
}
//每一行的样式
-(void)addLine:(NSString *)imgSrc addLabel:(NSString *)lineStr addTextInput:(NSString *)inputStr addX:(int)x addY:(int)y{
    
    //图标
    UIImageView *iconImg = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, 20, 30)];
    [iconImg setImage:[UIImage imageNamed:imgSrc]];
    [iconImg setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:iconImg];
    
    //输入框
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(x+30, y+2, 200, 30)];
    text.placeholder=inputStr;
    [self.view addSubview:text];
    
    //输入框下划线
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(x+30, y+5, 400, 30)];
    label.text=lineStr;
    label.textColor = [UIColor lightGrayColor];
    [self.view addSubview:label];
    
}

//
-(void)checkboxClick:(UIButton *)btn
{
    btn.selected = !btn.selected;
}

//
- (void)passwdImg:(NSString *)imgSrc1 passwdImg2:(NSString *)imgSrc2  addX:(int)x addY:(int)y{
    UIButton *imgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [imgBtn setFrame:CGRectMake(x, y, 26, 18)];
    [self.view addSubview:imgBtn];
    [imgBtn setBackgroundImage:[UIImage imageNamed:imgSrc1] forState:UIControlStateNormal];
    
    [imgBtn setBackgroundImage:[UIImage imageNamed:imgSrc2] forState:UIControlStateSelected];
    [imgBtn addTarget:self action:@selector(checkboxClick:) forControlEvents:UIControlEventTouchUpInside];
}

//
-(void)selectLine{
    UIButton *selectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [selectBtn setFrame:CGRectMake(50, 405, 20, 20)];
    [self.view addSubview:selectBtn];
    [selectBtn setBackgroundImage:[UIImage imageNamed:@"image/icon_login_no_choose@2x.png"] forState:UIControlStateNormal];
    
    [selectBtn setBackgroundImage:[UIImage imageNamed:@"image/icon_login_pitch_on@2x.png"] forState:UIControlStateSelected];
    [selectBtn addTarget:self action:@selector(checkboxClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(80, 400, 200, 30)];
    label1.text=@"立即完成注册即代表同意";
    label1.textColor = [UIColor lightGrayColor];
    [self.view addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(270, 400, 150, 30)];
    label2.text=@"《服务协议》";
    label2.textColor = [UIColor redColor];
    [self.view addSubview:label2];
    
    
}

//注册按钮
-(void)addLoginBtn{
    
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [Button setBackgroundColor: [UIColor redColor]];
    [Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [Button setFrame:CGRectMake((self.view.bounds.size.width-340)/2, 460, 340, 50)];
    // sets title for the button
    [Button setTitle:@"注册" forState:
     UIControlStateNormal];
    [self.view addSubview:Button];
    
}


@end
