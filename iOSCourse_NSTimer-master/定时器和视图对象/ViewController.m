//
//  ViewController.m
//  定时器和视图对象
//
//  Created by LittleHeap on 2017/5/7.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//属性和成员变量同步
@synthesize timerView = _timerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //初始化一个启动按钮
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(140, 100, 100, 100);
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    //初始化一个停止按钮
    UIButton* btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnStop.frame = CGRectMake(140, 200, 100, 100);
    [btnStop setTitle:@"停止定时器" forState:UIControlStateNormal];
    [btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnStop];
    
    //初始化一个View
    UIView* view = [[UIView alloc] init];
    view.backgroundColor = [UIColor orangeColor];
    view.frame = CGRectMake(0, 0, 100, 100);
    [self.view addSubview:view];
    view.tag = 120;
    
}

//按下开始按钮函数
-(void) pressStart{
    NSLog(@"Start");
    //NSTimer类方法创建一个定时器并启动这个定时器
    //参数1：时间间隔，单位秒
    //参数2：表示实现定时器函数的对象
    //参数3：定时器函数对象
    //参数4：可以传入定时器函数中一个参数
    //参数5：定时器是否重复，YES为重复，NO只完成一次函数调用
    //返回值：一个新建好的定时器对象
    _timerView = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTimer:) userInfo:@"Tom" repeats:YES];
    
}

//定时器内部触发函数
-(void) updateTimer:(NSTimer*) timer{
    //输出内容验证传递参数功能
    NSLog(@"Hello! %@", timer.userInfo);
    
    //控制View
    UIView* view = [self.view viewWithTag:120];
    view.frame = CGRectMake(view.frame.origin.x+1, view.frame.origin.y+1, 100, 100);
}

//按下停止按钮函数
-(void) pressStop{
    NSLog(@"Stop");
    //停止定时器函数
    if(_timerView != nil){
        [_timerView invalidate];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
