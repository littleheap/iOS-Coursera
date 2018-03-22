//
//  ViewController.m
//  UIGesture
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
    
    //加载图片
    UIImage* image = [UIImage imageNamed:@"1.JPG"];
    _myImageView = [[UIImageView alloc] init];
    _myImageView.image = image;
    //设置位置大小
    _myImageView.frame = CGRectMake(90, 120, 200, 300);
    //添加编号
    _myImageView.tag = 101;
    //添加图片
    [self.view addSubview:_myImageView];
    
    //手势（开启手势事件交互响应开关）
    _myImageView.userInteractionEnabled = YES;
    //创建一个点击手势对象
    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    //表示手势识别类型（几次点击时触发）
    tap.numberOfTapsRequired = 2;
    //表示几个手指点击时触发
    tap.numberOfTouchesRequired = 1;
    //给视图控件添加手势对象
    [_myImageView addGestureRecognizer:tap];
    
    //高级操作
    //①缩放手势
    _pinchGes = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAct:)];
    //将捏合手势添加到视图
    [_myImageView addGestureRecognizer:_pinchGes];
    //②旋转手势
    _rotGes = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotAct:)];
    //将旋转手势添加到视图
    [_myImageView addGestureRecognizer:_rotGes];
    
    //添加代理
    _rotGes.delegate = self;
    _pinchGes.delegate = self;

    //扩展手势
    //①平易手势
    UIPanGestureRecognizer* pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAct:)];
    //添加到视图对象
    [_myImageView addGestureRecognizer:pan];
    //②滑动手势
    UISwipeGestureRecognizer* swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeAct:)];
    //设定滑动手势接受事件的类型（上下左右）
    swipe.direction = UISwipeGestureRecognizerDirectionDown|UISwipeGestureRecognizerDirectionUp;
    //添加到视图对象
    [_myImageView addGestureRecognizer:swipe];
    //③长按手势
    UILongPressGestureRecognizer* longpre = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longpreAct:)];
    //设置长按手势时间
    longpre.minimumPressDuration = 0.5;
    //添加到视图
    [_myImageView addGestureRecognizer:longpre];
}

-(void) tap:(UITapGestureRecognizer*) tap{
    NSLog(@"点击操作");
    
    //获取手势监控的视图对象
    UIImageView* iView = tap.view;
    //开始动画过程
    [UIView beginAnimations:nil context:nil];
    //设置动画时间
    [UIView setAnimationDuration:2];
    //放大效果
    iView.frame = CGRectMake(0, 0, 320 , 560);
    //结束动画
    [UIView commitAnimations];
}

//缩放函数
-(void) pinchAct:(UIPinchGestureRecognizer*) pinch{
    //获取监控视图
    UIImageView* iView = pinch.view;
    //对图像视图进行变换矩阵计算并赋值
    iView.transform = CGAffineTransformScale(iView.transform, pinch.scale, pinch.scale);
    //将缩放值归位
    pinch.scale = 1;
}

//旋转函数
-(void) rotAct:(UIRotationGestureRecognizer*) rot{
    //获取监控视图
    UIImageView* iView = rot.view;
    //计算旋转变换矩阵并赋值
    iView.transform = CGAffineTransformRotate(iView.transform, rot.rotation);
    //选择角度清零
    rot.rotation = 0;
}

//同时处理旋转和缩放的手势代理函数
-(BOOL) gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    return YES;
}

//长按手势函数
-(void) longpreAct:(UILongPressGestureRecognizer*) pre{
    if(pre.state == UIGestureRecognizerStateBegan){
        NSLog(@"状态开始");//第一次到达时间节点触发
    }else if (pre.state == UIGestureRecognizerStateEnded){
        NSLog(@"状态结束");//手指离开屏幕触发
    }
}

//移动事件函数，只要手指坐标在屏幕上发生变化就调用
-(void) panAct:(UIPanGestureRecognizer*) pan{
    //获取移动的坐标，相对于视图的坐标系
    CGPoint pt = [pan translationInView:self.view];
    //打印坐标
    NSLog(@"x = %.2f , y = %.2f",pt.x,pt.y);
    //获取移动时的相对速度
    CGPoint pv = [pan velocityInView:self.view];
    //打印速度
    NSLog(@"vx = %.2f , vy = %.2f",pv.x,pv.y);
}

//滑动函数
-(void) swipeAct:(UISwipeGestureRecognizer*) swipe{
    if(swipe.direction & UISwipeGestureRecognizerDirectionDown){
        NSLog(@"向下滑动");
    }else if(swipe.direction & UISwipeGestureRecognizerDirectionUp){
        NSLog(@"向上滑动");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
