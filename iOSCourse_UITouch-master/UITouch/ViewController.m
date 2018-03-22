//
//  ViewController.m
//  UITouch
//
//  Created by LittleHeap on 2017/5/13.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //加载一张图片
    UIImage* image = [UIImage imageNamed:@"2.JPG"];
    //创建图像视图
    UIImageView* iView = [[UIImageView alloc]init];
    //添加图片
    iView.image = image;
    //设置位置大小
    iView.frame = CGRectMake(100, 100, 220, 300);
    //赋予编号
    iView.tag = 101;
    //添加视图
    [self.view addSubview:iView];
}

//点击屏幕的开始瞬间调用此函数
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"手指触碰屏幕瞬间");
    //获取点击对象
    UITouch* touch = [touches anyObject];
    //记录当前点击次数
    if(touch.tapCount == 1){
        NSLog(@"单次点击");
    }else if(touch.tapCount == 2){
        NSLog(@"双次点击");
    }
    
    //记录初始位置
    _mpt = [touch locationInView:self.view];
}

//手指在屏幕上时，未离开屏幕
-(void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"手指在屏幕上移动");
    
    UITouch* touch = [touches anyObject];
    //获取手指移动位置（相对于当前视图的坐标）
    CGPoint pt = [touch locationInView:self.view];
    //显示相对位置坐标
    NSLog(@"x = %f,y = %f",pt.x,pt.y);
    
    //移动图片
    float offset_x = pt.x - _mpt.x;
    float offset_y = pt.y - _mpt.y;
    
    UIImageView* iView = [self.view viewWithTag:101];
    iView.frame = CGRectMake(iView.frame.origin.x+offset_x, iView.frame.origin.y+offset_y, iView.frame.size.width, iView.frame.size.height);
    
    //清零
    _mpt = pt;
}

//手指离开屏幕
-(void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"手指离开屏幕了");
}

//在特殊情况下中段触屏事件时调用，取消当前点击手势作用
-(void) touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch cancel");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
