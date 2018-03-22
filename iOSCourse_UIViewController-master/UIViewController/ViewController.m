//
//  ViewController.m
//  UIViewController
//
//  Created by LittleHeap on 2017/5/6.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"
#import "ViewController02.h"

@interface ViewController ()

@end

@implementation ViewController

//当屏幕被点击时调用此函数
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //创建视图控制器2
    ViewController02* vc = [[ViewController02 alloc] init];
    //显示一个新的视图控制器到屏幕上
    [self presentViewController:vc animated:YES completion:nil];

}

//当视图控制器第一次被加载显示视图的时候，调用此函数
//布局初始化视图作用，初始化资源使用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"第一次加载视图");
    
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(140, 100, 100, 100);
    view.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:view];
    
    self.view.backgroundColor = [UIColor greenColor];
}

//当视图控制器视图即将显示，调用此函数
-(void) viewWillAppear:(BOOL)animated{

}

//当视图即将消失时，调用此函数
-(void) viewWillDisappear:(BOOL)animated{

}

//当视图已经显示时，瞬间调用此函数
-(void) viewDidAppear:(BOOL)animated{

}

//当视图已经从屏幕上消失，调用此函数
-(void) viewDidDisappear:(BOOL)animated{

}


//当系统内存过低时，会发起警告信息，调用此函数
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
