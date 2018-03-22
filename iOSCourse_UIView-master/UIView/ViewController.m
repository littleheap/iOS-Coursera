//
//  ViewController.m
//  UIView
//
//  Created by LittleHeap on 2017/5/5.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建一个UIView对象,是一个视图对象，是屏幕上左右对象的基础类，他们都继承于UIView
    UIView* view01 = [[UIView alloc] init];
    //设置UIView位置大小
    view01.frame = CGRectMake(100, 100, 150, 150);
    //设置UIView背景颜色
    view01.backgroundColor = [UIColor blueColor];
    //显示UIView
    [self.view addSubview:view01];
    //是否隐藏视图
    view01.hidden = NO;
    //设置视图的透明度(0~1)
    view01.alpha = 0.2;
    //设置是否显示不透明
    view01.opaque = NO;
    //将自己从父亲视图删除掉
    //[view removeFromSuperview];
    
    //此处额外再创建两个视图用来演示层级关系
    UIView* view02 = [[UIView alloc] init];
    view02.frame = CGRectMake(125, 125, 150, 150);
    view02.backgroundColor = [UIColor orangeColor];
    
    UIView* view03 = [[UIView alloc] init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor = [UIColor greenColor];
    
    //此处由添加顺序可以看出视图添加是栈概念
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    
    //将某一个视图显示到最前面
    //[self.view bringSubviewToFront:view01];
    
    //将某一个视图显示到最后面
    //[self.view sendSubviewToBack:view03];
    
    //subviews管理所有的self.view的子视图数组
    UIView* viewFront = self.view.subviews[2];//view03
    UIView* viewMid = self.view.subviews[1];//view02
    UIView* viewBack = self.view.subviews[0];//view01
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
