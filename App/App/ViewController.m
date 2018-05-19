//
//  ViewController.m
//  App
//
//  Created by mofeio o on 18/5/18.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <AFNetworking/AFNetworking.h>
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self navImg];
    [self addLine:@"_______________________________________" addTextInput:@"手机号" addX:30 addY:220];
    [self addLine:@"_______________________________________"addTextInput:@"密码" addX:30 addY:270];
    [self addLine:@"_______________________________________" addTextInput:@"验证码" addX:30 addY:320];
    [self addLoginBtn];
    [self weChat];
    [self toLogin:@"去注册" addText:@"还没有账号？" addX:200 addY:550];
     [self toLogin:@"找回密码" addText:@"忘记密码？" addX:200 addY:600];
}
-(void)navImg{
    UIImageView *backImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width ,200)];
    [backImg setImage:[UIImage imageNamed:@"image/images_commonly_backdrop@3x"]];
    [backImg setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:backImg];
}

//- (void)get
//{
//    // AFHTTPSessionManager内部包装了NSURLSession
//    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
//    
//    NSDictionary *params = @{
//                             @"username" : @"123",
//                             @"pwd" : @"123"
//                             };
//    
//    [mgr POST:@"http://www.baidu.com/login" parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
//        NSLog(@"请求成功---%@", responseObject);
//    } failure:^(NSURLSessionDataTask *task, NSError *error) {
//        NSLog(@"请求失败---%@", error);
//    }];
//}


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
    [Button setFrame:CGRectMake((self.view.bounds.size.width-340)/2, 400, 340, 50)];
    // sets title for the button
    [Button setTitle:@"登录" forState:
     UIControlStateNormal];
    [Button.layer setCornerRadius:25];
    //切割超出圆角范围的子视图
    Button.layer.masksToBounds = YES;
    [self.view addSubview:Button];
    
}- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)weChat{
    UIImageView *Img = [[UIImageView alloc]initWithFrame:CGRectMake(30, 550,50,50)];
    [Img setImage:[UIImage imageNamed:@"image/icon_particulars_wechat@3x"]];
    [Img setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:Img];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(30, 610, 120, 20)];
    label.text=@"第三方登录";
    label.textColor = [UIColor lightGrayColor];
    label.font = [UIFont systemFontOfSize: 11.0];
    [self.view addSubview:label];}

-(void)toLogin:(NSString *)btnText addText:(NSString *)text addX:(int)x addY:(int)y{
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(x, y, 80, 30)];
    label.text=text;
    label.textColor = [UIColor lightGrayColor];
    label.font = [UIFont systemFontOfSize: 13.0];
    [self.view addSubview:label];
    
    
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Button.titleLabel.font = [UIFont systemFontOfSize: 13.0];
    [Button setTitleColor:[UIColor orangeColor]forState:UIControlStateNormal];
    [Button setFrame:CGRectMake(x+80, y, 60, 30)];
    [Button setTitle:btnText forState:
     UIControlStateNormal];
    [self.view addSubview:Button];
    
    
    UIImageView *Img = [[UIImageView alloc]initWithFrame:CGRectMake(x+140, y+5,30,20)];
    [Img setImage:[UIImage imageNamed:@"image/icon_arrowhead_yellowright@3x.png"]];
    [Img setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:Img];
}
@end
