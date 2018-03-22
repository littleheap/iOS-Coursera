//
//  ViewController.m
//  UISwitch
//
//  Created by LittleHeap on 2017/5/7.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//同步属性和成员变量
@synthesize mySwich = _mySwitch;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //创建一个开关对象
    _mySwitch = [[UISwitch alloc] init];
    _mySwitch.frame = CGRectMake(165, 100, 100, 100);//设置位置
    _mySwitch.on = YES;//开关状态设置
    [_mySwitch setOn:YES];//也可以使用Set函数
    [_mySwitch setOn:YES animated:YES];//多了一个是否开启动画的效果
    [self.view addSubview:_mySwitch];//添加并显示开关
    
    [_mySwitch setOnTintColor:[UIColor redColor]];//更改控件的主题颜色
    [_mySwitch setThumbTintColor:[UIColor greenColor]];//更改圆扭的颜色
    [_mySwitch setTintColor:[UIColor orangeColor]];//更改关闭风格颜色
    
    //添加触发事件
    [_mySwitch addTarget:self action:@selector(switchChange:) forControlEvents:UIControlEventValueChanged];
    
}

//事件触发函数,附加参数
-(void) switchChange:(UISwitch*) swich{
    NSLog(@"开关状态发生变化");
    if(swich.on == YES){
        NSLog(@"开关被打开");
    }else{
        NSLog(@"开关被关闭");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
