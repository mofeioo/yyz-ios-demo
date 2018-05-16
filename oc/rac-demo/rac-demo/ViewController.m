//
//  ViewController.m
//  rac-demo
//
//  Created by mofeio o on 18/5/15.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[self daili];
    [self kvoUse];
    
}

//简单的时间监听
-(void) eventListen{
    //事件监听
    UITextField *textFild=[[UITextField alloc]initWithFrame:CGRectMake(100,100, 100, 20) ];
    textFild.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:textFild];
    [[textFild rac_signalForControlEvents:UIControlEventEditingChanged] subscribeNext:^(id x){
        NSLog(@"change");
    }];}
//代理
-(void) daili{UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"RAC" message:@"RAC TEST" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"other", nil];
    [[self rac_signalForSelector:@selector(alertView:clickedButtonAtIndex:) fromProtocol:@protocol(UIAlertViewDelegate)] subscribeNext:^(RACTuple *tuple) {
        NSLog(@"%@",tuple.first);
        NSLog(@"%@",tuple.second);
        NSLog(@"%@",tuple.third);
    }];
    /* 简化代码
    [[alertView rac_buttonClickedSignal] subscribeNext:^(id x) {
        NSLog(@"%@",x);
    }];*/
    
    
    [alertView show];
}

-(void) kvoUse{
    UIScrollView *scrolView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 200, 400)];
    scrolView.contentSize = CGSizeMake(200, 800);
    scrolView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:scrolView];
    [RACObserve(scrolView, contentOffset) subscribeNext:^(id x) {
        NSLog(@"success");
    }];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
