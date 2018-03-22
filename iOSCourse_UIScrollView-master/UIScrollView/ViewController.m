//
//  ViewController.m
//  UIScrollView
//
//  Created by LittleHeap on 2017/5/10.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //初始化滚动视图
    scroll = [[UIScrollView alloc] init];
    //定位并设置大小
    scroll.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-30);
    //是否按照整页滚动视图
    scroll.pagingEnabled = YES;
    //是否开启滚动效果
    scroll.scrollEnabled = YES;
    //设置画布大小，画布显示在滚动视图内部，一般打野Frame的大小
    scroll.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*5, [UIScreen mainScreen].bounds.size.height-30);
    //是否可以边缘弹动效果
    scroll.bounces = YES;
    //是否横向弹动效果
    scroll.alwaysBounceHorizontal = YES;
    //是否纵向弹动效果
    scroll.alwaysBounceVertical = YES;
    //显示横向滚动条
    scroll.showsHorizontalScrollIndicator = YES;
    //显示纵向滚动条
    scroll.showsVerticalScrollIndicator = YES;
    //设置背景颜色
    scroll.backgroundColor = [UIColor orangeColor];
    //是否允许通过点击屏幕让滚动视图响应事件
    scroll.userInteractionEnabled = YES;
    //循环添加图片
    for (int i = 0; i < 5; i++) {
        NSString* imageName = [NSString stringWithFormat:@"%d.JPG",i+1];
        UIImage* image = [UIImage imageNamed:imageName];
        UIImageView* imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width*i, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-30);
        [scroll addSubview:imageView];
    }
    //添加控件
    [self.view addSubview:scroll];
    
    //高级进阶（调用代理函数）
    //将当前视图控制器做为代理对象
    scroll.delegate = self;
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //点击恢复到第一张
    //滚动视图画布的偏移位置
//    scroll.contentOffset = CGPointMake(0, 0);
    //或者如下方法，点击scroll外界空白处，可柔和恢复到指定坐标（第一张）
    [scroll scrollRectToVisible:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) animated:YES];
}

-(void) scrollViewDidScroll:(UIScrollView *)scrollView{
    //当滚动视图发生变化就会调用此函数
    NSLog(@"y = %f",scrollView.contentOffset.x);
}

-(void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    //当滚动视图结束拖动时调用此函数
    NSLog(@"结束滚动");
}

-(void) scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    //当滚动视图即将开始拖动时调用此函数
    NSLog(@"即将滚动");
}

-(void) scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    //当滚动视图即将结束拖动时调用此函数
    NSLog(@"即将结束");
}

-(void) scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    //当滚动视图即将减速时调用
    NSLog(@"即将减速");
}

-(void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    //当视图即将结束减速时调用
    NSLog(@"结束减速");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
