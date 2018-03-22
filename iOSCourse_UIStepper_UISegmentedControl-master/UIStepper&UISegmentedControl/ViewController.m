//
//  ViewController.m
//  UIStepper&UISegmentedControl
//
//  Created by LittleHeap on 2017/5/8.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize stepper = _stepper;
@synthesize segment = _segment;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建步进器对象
    _stepper = [[UIStepper alloc] init];
    //位置定义
    _stepper.frame = CGRectMake(140, 100, 100, 100);
    //最大值
    _stepper.maximumValue = 100;
    //最小值
    _stepper.minimumValue = 0;
    //当前值
    _stepper.value = 10;
    //设置步进值
    _stepper.stepValue = 5;
    //是否可以重复响应事件（长按响应）
    _stepper.autorepeat = YES;
    //是否将步进结果通过事件函数响应出来（是否实时触发函数）
    _stepper.continuous = YES;
    //显示步进器
    [self.view addSubview:_stepper];
    //添加事件函数
    [_stepper addTarget:self action:@selector(stepChange) forControlEvents:UIControlEventValueChanged];
    
    //创建分栏控件对象
    _segment = [[UISegmentedControl alloc] init];
    //设置位置大小
    _segment.frame = CGRectMake(90, 150, 200, 40);
    //添加一个按钮元素
    [_segment insertSegmentWithTitle:@"0元" atIndex:0 animated:NO];
    //①：按钮选项文字 ②：按钮索引位置 ③：是否显示插入动画效果
    [_segment insertSegmentWithTitle:@"5元" atIndex:1 animated:NO];
    [_segment insertSegmentWithTitle:@"10元" atIndex:2 animated:NO];
    //当前默认按钮索引设置
    _segment.selectedSegmentIndex = 0;
    //显示分栏控制器
    [self.view addSubview:_segment];
    //添加事件函数
    [_segment addTarget:self action:@selector(segmentChange) forControlEvents:UIControlEventValueChanged];
    
}

-(void) stepChange{
    NSLog(@"Step Changed, value=%f",_stepper.value);
}

-(void) segmentChange{
    NSLog(@"%ld",_segment.selectedSegmentIndex);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
