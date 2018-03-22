//
//  ViewController.m
//  UISlider&UIProgress
//
//  Created by LittleHeap on 2017/5/8.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider = _slider;
@synthesize progressView = _progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //进度条创建
    _progressView = [[UIProgressView alloc] init];
    //进行位置大小设置（其中高度不可改变）
    _progressView.frame = CGRectMake(90, 200, 200, 40);
    //设置风格颜色值
    _progressView.progressTintColor = [UIColor redColor];
    _progressView.trackTintColor = [UIColor greenColor];
    //设置进度条进度值(0~1)
    _progressView.progress = 0.7;
    //设置进图条风格
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    //显示进度条
    [self.view addSubview:_progressView];
    
    //滑动条创建
    _slider = [[UISlider alloc] init];
    //设置位置大小
    _slider.frame = CGRectMake(90, 270, 200, 40);
    //设置滑动最大值
    _slider.maximumValue = 100;
    //设置滑动最小值（可以为负值）
    _slider.minimumValue = 0;
    //设置滑动条滑块位置
    _slider.value = 70;
    //左侧背景颜色
    _slider.minimumTrackTintColor = [UIColor orangeColor];
    //右侧背景颜色
    _slider.maximumTrackTintColor = [UIColor grayColor];
    //设置滑块的颜色
    _slider.thumbTintColor = [UIColor blueColor];
    //显示滑动条
    [self.view addSubview:_slider];
    //响应事件
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];

}

-(void) pressSlider{
    NSLog(@"value = %f",_slider.value);
    _progressView.progress = (_slider.value-_slider.minimumValue)/(_slider.maximumValue-_slider.minimumValue);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
