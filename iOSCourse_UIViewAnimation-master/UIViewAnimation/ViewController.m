//
//  ViewController.m
//  UIViewAnimation
//
//  Created by LittleHeap on 2017/6/2.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _imageView = [[UIImageView alloc] init];
    
    _imageView.frame = CGRectMake(140, 120, 80, 90);
    
    _imageView.image = [UIImage imageNamed:@"image.jpg"];
    
    [self.view addSubview:_imageView];
    
    //移动按钮
    UIButton* btnMove = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btnMove.frame = CGRectMake(140, 360, 80, 40);
    
    [btnMove setTitle:@"Move" forState:UIControlStateNormal];
    
    [btnMove addTarget:self action:@selector(pressMove) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnMove];
    
    //缩放按钮
    UIButton* btnScale = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btnScale.frame = CGRectMake(140, 400, 80, 40);
    
    [btnScale setTitle:@"Scale" forState:UIControlStateNormal];
    
    [btnScale addTarget:self action:@selector(pressScale) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnScale];
    
}

-(void) pressMove{
    
    //开始动画函数，准备动画开始工作
    [UIView beginAnimations:nil context:nil];
    
    //动画实际目标结果
    
    //设置动画时间函数，单位是秒
    [UIView setAnimationDuration:3];
    
    //设置动画开始开始延时时间，单位是秒
    [UIView setAnimationDelay:1];
    
    //设置动画代理对象
    [UIView setAnimationDelegate:self];
    
    //设置动画运动轨迹的方式
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    //设置动画结束调用函数
    [UIView setAnimationDidStopSelector:@selector(stopAnimation)];
    
    //目标位置
    _imageView.frame = CGRectMake(140, 260, 80, 90);
    
    //目标透明度
    _imageView.alpha = 1.0;
    
    //提交运行动画
    [UIView commitAnimations];
}

-(void) pressScale{
    
    //开始动画函数，准备动画开始工作
    [UIView beginAnimations:nil context:nil];
    
    //动画实际目标结果
    
    //设置动画时间函数，单位是秒
    [UIView setAnimationDuration:3];
    
    //设置动画开始开始延时时间，单位是秒
    [UIView setAnimationDelay:1];
    
    //设置动画代理对象
    [UIView setAnimationDelegate:self];
    
    //设置动画运动轨迹的方式
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    //设置动画结束调用函数
    [UIView setAnimationDidStopSelector:@selector(stopAnimation)];
    
    //目标位置
    _imageView.frame = CGRectMake(80, 120, 200, 240);
    
    //目标透明度
    _imageView.alpha = 0.3;
    
    //提交运行动画
    [UIView commitAnimations];
}

-(void) stopAnimation{

    NSLog(@"Animation Finished");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
