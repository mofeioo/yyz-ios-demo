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
    [self sendmessage];
    [self addLoginBtn];

    
}
-(void)nav{
    UIView *header= [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 80)];
    header.backgroundColor= [UIColor greenColor];
    [self.view addSubview:header];
    
    UILabel * labelx=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    labelx.text = @"信息反馈";
    labelx.font=[UIFont systemFontOfSize:25];
    [labelx setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:labelx];
    
    UIButton * butonBack = [UIButton buttonWithType:UIButtonTypeCustom];
    butonBack.frame=CGRectMake(20, 40, 40, 20);
    UIImage * imgBack=[UIImage imageNamed:@"image/icon_arrowhead_yellowleft@2x"];
    [butonBack setBackgroundImage:imgBack forState:UIControlStateNormal];
    [self.view addSubview:butonBack];
    
    
    
    
}



-(void)sendmessage{
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 80, self.view.bounds.size.width-80,80)];
    label.lineBreakMode = UILineBreakModeWordWrap;
    label.numberOfLines = 0;
    label.font=[UIFont systemFontOfSize:14];
    
    label.text=@"快点反馈吧，快点反馈吧，快点反馈吧，快点反馈吧，快点反馈吧，快点反馈吧，快点反馈吧！";
    [self.view addSubview:label];
    
    
    //输入框
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(0, 160, self.view.bounds.size.width, 200)];
    text.backgroundColor= [UIColor blackColor];
    text.alpha= 0.1;
    text.placeholder=@"请输入";
    [self.view addSubview:text];
    
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)addLoginBtn{
    
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [Button setBackgroundColor: [UIColor greenColor]];
    [Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [Button setFrame:CGRectMake((self.view.bounds.size.width-300)/2, 550, 300, 50)];
    // sets title for the button
    [Button setTitle:@"提交" forState:
     UIControlStateNormal];
    [Button.layer setCornerRadius:25];
    //切割超出圆角范围的子视图
    Button.layer.masksToBounds = YES;
    [self.view addSubview:Button];
    
    
    
    
    
}@end
