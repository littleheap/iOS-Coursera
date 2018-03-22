//
//  VCSecond.m
//  NavigationAnimation
//
//  Created by LittleHeap on 2017/6/3.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Second";
    
    _imageView = [[UIImageView alloc] init];
    
    _imageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
    _imageView.image = [UIImage imageNamed:@"IMG_1024.JPG"];
    
    [self.view addSubview:_imageView];
    
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //定义动画变换对象
    CATransition* amin = [CATransition animation];
    
    //设置动画时间长度
    amin.duration = 4;
    
    //设置动画类型(cube,moveln,reveal,fade,pageCurl,pageUnCurl,suckEffect,oglFlip)
    amin.type = @"cube";
    
    //设置动画子类型
    amin.subtype = kCATransitionFromLeft;
    
    //设置动画轨迹模式
    amin.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    //添加到对象上
    [self.navigationController.view.layer addAnimation:amin forKey:nil];
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
