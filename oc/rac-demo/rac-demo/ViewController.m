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
    //时间监听
    UITextField *textFild=[[UITextField alloc]initWithFrame:CGRectMake(100,100, 100, 20) ];
    [self.view addSubview:textFild];
    [[self.textFild rac_signalForControlEvents:UIControlEventEditingChanged] subscribeNext:^(id x){
        NSLog(@"change");
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
