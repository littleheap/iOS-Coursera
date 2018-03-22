//
//  ViewController.m
//  UILabel
//
//  Created by LittleHeap on 2017/5/2.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建UI控件函数
- (void)createUI{
    UILabel* label = [[UILabel alloc] init];
    label.text = @"Hello iOS! blablablablablablablablablablablablablabla";
    //UILabel基本属性
    //设定label显示的位置
    label.frame = CGRectMake(110, 100, 160, 140);
    //设置label的背景颜色
    label.backgroundColor = [UIColor whiteColor];
    //设置label文字大小
    label.font = [UIFont systemFontOfSize:20];
    //设置文字的颜色
    label.textColor = [UIColor greenColor];
    //将label显示到屏幕上
    [self.view addSubview:label];
    
    //UILabel高级属性
    //设定阴影颜色
    label.shadowColor = [UIColor grayColor];
    //设定阴影偏移位置
    label.shadowOffset = CGSizeMake(2, 2);
    //文字居中对齐，默认左对齐
    label.textAlignment = NSTextAlignmentLeft;
    //自动换行(设定文字显示的行数，默认为1，0为自动换行)
    label.numberOfLines = 0;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    //调用创建UI函数
    [self createUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
