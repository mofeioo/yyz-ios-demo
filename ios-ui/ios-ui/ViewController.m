//
//  ViewController.m
//  ios-ui
//
//  Created by mofeio o on 18/5/8.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//- (void)addLabel{
//    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 200, 30)];
//    [self.view addSubview:label];
//    
//        label.backgroundColor = [UIColor yellowColor];//设置背景颜色
//        label.textColor = [UIColor redColor];//设置Label上文字的颜色
//    label.text = @"you is a big sb!";//设置Label上的文字
//        label.font = [UIFont systemFontOfSize:15];//设置Label上文字的大小 默认为17
//    //    label.textAlignment = NSTextAlignmentCenter;//设置文字位子默认靠左
//    //    label.numberOfLines = 0;//设置行数默认为1，当为0时可以就是设置多行
//    //    label.font = [UIFont fontWithName:@"Arial" size:30];//设置内容字体和字体大小
//    //    label.highlighted = YES;//Label是否高亮
//    //
//    //    //有时偶尔会使用到阴影设置
//    //    label.shadowColor = [UIColor blueColor];//设置阴影颜色
//    //    label.shadowOffset = CGSizeMake(10, 10);//设置阴影的偏移
//}
//
//- (void)addButton{
//    // 1. 创建按钮
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    //    UIButton *button = [[UIButton alloc]init];// 和上面一行代码等价
//    
//    //    注意：按钮创建好之后，按钮的类型是不可以被修改
//    //    button.buttonType = UIButtonTypeCustom ; // 错误写法，系统会报错
//    
//    //    UIButtonTypeCustom：无类型，按钮的内容需要自定义：位置尺寸、背景色，等（如果没有自定义这些可能会看不到）
//    //    UIButtonTypeDetailDisclosure：
//    //    UIButtonTypeInfoLight：
//    //    UIButtonTypeInfoDark：
//    //    UIButtonTypeContactAdd：
//    // 2. 设置位置尺寸
//    button.frame = CGRectMake(100, 200, 200, 50);
//  
//    // 3. 设置文字
//    // 3.1 常态的文字
//    [button setTitle:@"我是按钮" forState:UIControlStateNormal];
//    // 3.2 高亮状态的文字
//    [button setTitle:@"我是高亮按钮" forState:UIControlStateHighlighted];
//   
//    // 4. 设置字体颜色
//    // 4.1 常态的字体颜色
//    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
//    // 4.2 高亮状态的字体颜色
//    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
//   
//    // 4. 设置图片
//    // 4.1 常态下的图片
//    [button setImage:[UIImage imageNamed:@"like"] forState:UIControlStateNormal];
//    // 4.2 高亮下的图片
//    [button setImage:[UIImage imageNamed:@"like_pressed"] forState:UIControlStateHighlighted];
//    
//    // 5. 设置背景图片
//    // 5.1 常态下的背景图
//    [button setBackgroundImage:[UIImage imageNamed:@"buttongreen"] forState:UIControlStateNormal];
//    // 5.2 高亮下的背景图
//    [button setBackgroundImage:[UIImage imageNamed:@"buttongreen_hightlighted"] forState:UIControlStateHighlighted];
//    
//    // 6. 设置按钮点击状态, 默认就是YES ,NO 状态是不可点击
//    button.enabled = YES;
//   
//    // 7. 将按钮添加入控制器view中
//    [self.view addSubview:button];
//}
//
//- (void)addTextfield{
////    (1) //初始化textfield并设置位置及大小
//    
//    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(20, 20, 130, 30)];
//    
////    (2) //设置边框样式，只有设置了才会显示边框样式
//    text.borderStyle = UITextBorderStyleRoundedRect;
//    　typedef enum {
//        UITextBorderStyleNone,
//        UITextBorderStyleLine,
//        UITextBorderStyleBezel,
//        UITextBorderStyleRoundedRect
//    } UITextBorderStyle;
//    　
////    (3) //设置输入框的背景颜色，此时设置为白色 如果使用了自定义的背景图片边框会被忽略掉
//    　 text.backgroundColor = [UIColor whiteColor];
    
////    (4) //设置背景
//    注意： 只有在 UITextBorderStyleNone 样式下，设置背景图才会生效，且图片大小小于 text 的frame时，图片会拉伸
//    text.background = [UIImage imageNamed:@"dd.png"];
    
//    (5) //设置背景
    
    // 设置enable为NO 时的背景图片
    
   // text.disabledBackground = [UIImage imageNamed:@"cc.png"];
    
     //(6)当输入框没有内容时，水印提示 提示内容为password
//    text.placeholder = @"password";

//    (7) //设置输入框内容的字体样式和大小
  //  text.font = [UIFont fontWithName:@"Arial" size:20.0f];
    
//    (8) //设置字体颜色
  //  text.textColor = [UIColor redColor];
    
////    (9) //输入框中是否有个叉号，在什么时候显示，用于一次性删除输入框中的内容
//    text.clearButtonMode = UITextFieldViewModeAlways;
//    
//    typedef enum {
//        UITextFieldViewModeNever,　//重不出现
//        UITextFieldViewModeWhileEditing, //编辑时出现
//        UITextFieldViewModeUnlessEditing,　//除了编辑外都出现
//        UITextFieldViewModeAlways 　//一直出现
//    } UITextFieldViewMode;
    
//    (10) //输入框中一开始就有的文字
  //  text.text = @"一开始就在输入框的文字";
    
//    (11) //每输入一个字符就变成点 用语密码输入
 //   text.secureTextEntry = YES;
    
//    (12) //是否纠错
//    text.autocorrectionType = UITextAutocorrectionTypeNo;
//    
//    typedef enum {
//        UITextAutocorrectionTypeDefault, 默认
//        UITextAutocorrectionTypeNo, //　不自动纠错
//        UITextAutocorrectionTypeYes,　//自动纠错
//    } UITextAutocorrectionType;
    
//    (14) //再次编辑就清空
//    text.clearsOnBeginEditing = YES;
    
////    (15) //内容对齐方式
//    text.textAlignment = UITextAlignmentLeft;
    
//    [self.view addSubview:text];
//}
//
//-(void)addImage{
//    UIImageView *imgview = [[UIImageView alloc]initWithFrame:CGRectMake(20, 25, 20, 20)];
//    [imgview setImage:[UIImage imageNamed:@"image/icon_login_visible@2x.png"]];
//    [imgview setContentMode:UIViewContentModeScaleAspectFit];
//    [self.view addSubview:imgview];
//}

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



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self addLabel];
//    [self addButton];
//    [self addTextfield];
    
    
//    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(40, 20, 200, 30)];
//    text.placeholder=@"input your password";
//    [self.view addSubview:text];
//    
//    
//    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 22, 300, 30)];
//    label.text=@"________________________________";
//    label.textColor = [UIColor lightGrayColor];
//    [self.view addSubview:label];
//    
//    [self addImage];
//    
//    // A rounded Rect button created by using class method
//    UIButton *Button = [UIButton buttonWithType:
//                                 UIButtonTypeRoundedRect];
//    [Button setBackgroundColor: [UIColor redColor]];
//    [Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [Button setFrame:CGRectMake(305, 20, 100, 30)];
//    // sets title for the button
//    [Button setTitle:@"发送验证码" forState:
//     UIControlStateNormal];
//    [self.view addSubview:Button];
    
    
    
//
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
    
    [self selectLine];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
