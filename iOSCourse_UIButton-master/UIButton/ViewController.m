//
//  ViewController.m
//  UIButton
//
//  Created by LittleHeap on 2017/5/3.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//创建普通按钮
-(void)createUIRectButton{
    //定义创建button对象
    //通过类方法创建button
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置button位置
    button.frame = CGRectMake(140, 100, 100, 40);
    //设置button名称
    //正常状态显示文字
    [button setTitle:@"Button" forState:UIControlStateNormal];
    //按下状态显示文字
    [button setTitle:@"Pressed" forState:UIControlStateHighlighted];
    //设置背景颜色
    button.backgroundColor = [UIColor grayColor];
    //设置文字颜色
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    //设置按钮风格颜色(优先级没有titlecolor高，且不分状态)
    [button setTintColor:[UIColor whiteColor]];
    //设置字体大小
    button.titleLabel.font = [UIFont systemFontOfSize:18];
    //显示按钮
    [self.view addSubview:button];
}

//创建自定义按钮
-(void)createImageButton{
    //创建一个自定义类型button
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    //设置按钮位置
    btnImage.frame = CGRectMake(140, 200, 100, 90);
    //给按钮添加图片
    UIImage* icon01 = [UIImage imageNamed:@"image01.png"];
    UIImage* icon02 = [UIImage imageNamed:@"image02.png"];
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    //显示按钮
    [self.view addSubview:btnImage];
}

//创建事件按钮
-(void) createBtn{
    //创建圆角按钮
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(140, 340, 100, 100);
    [btn setTitle:@"Press" forState:UIControlStateNormal];
    //按钮添加事件
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    //显示按钮
    [self.view addSubview:btn];
    
    //创建另一个按钮（多个按钮可以使用同一个事件函数）
    UIButton* btn_another = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_another.frame = CGRectMake(140, 400, 100, 100);
    [btn_another setTitle:@"Another" forState:UIControlStateNormal];
    [btn_another addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_another];
    
    //设置按钮标记
    btn.tag = 1;
    btn_another.tag = 2;
}

//无参数按钮事件
-(void) pressBtn{
    NSLog(@"Btn Pressed");
}
//有参数按钮事件
-(void) pressBtn:(UIButton*) btn{
    NSLog(@"Btn Pressed ");
    if(btn.tag == 1){
        NSLog(@"1");
    }else{
        NSLog(@"2");
    }
}
//btn_another按钮事件处理
-(void) pressBtn_another{
    NSLog(@"Another Btn Pressed");
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //调用创建按钮函数
    [self createUIRectButton];
    [self createImageButton];
    [self createBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
