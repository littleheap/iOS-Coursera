//
//  ViewController.m
//  ViewLayout
//
//  Created by LittleHeap on 2017/5/16.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个父视图
    SuperView* sView = [[SuperView alloc] init];
    //设置位置大小
    sView.frame = CGRectMake(20, 20, 180, 280);
    //添加子视图
    [sView createSubViews];
    //添加背景颜色
    sView.backgroundColor = [UIColor grayColor];
    //添加显示
    [self.view addSubview:sView];
    
    //创建一个放大按钮
    UIButton* btn_large = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //添加名称
    [btn_large setTitle:@"放大" forState:UIControlStateNormal];
    //设置位置大小
    btn_large.frame = CGRectMake(260, 580, 80, 40);
    //添加事件
    [btn_large addTarget:self action:@selector(pressLarge) forControlEvents:UIControlEventTouchUpInside];
    //添加显示
    [self.view addSubview:btn_large];
    
    //创建一个缩小按钮
    UIButton* btn_small = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //添加名称
    [btn_small setTitle:@"缩小" forState:UIControlStateNormal];
    //设置位置大小
    btn_small.frame = CGRectMake(260, 620, 80, 40);
    //添加事件
    [btn_small addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    //添加显示
    [self.view addSubview:btn_small];
    
    sView.tag = 101;
}

-(void) pressLarge{
    
    SuperView* sView = [self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 300 , 480);
    
    [UIView commitAnimations];
}

-(void) pressSmall{
    
    SuperView* sView = [self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 180 , 280);
    
    [UIView commitAnimations];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
