//
//  ViewController.m
//  UIPickerView
//
//  Created by LittleHeap on 2017/5/22.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建选择视图对象（显示多组数据和元素）
    UIPickerView* pkView = [[UIPickerView alloc] init];
    //设置位置大小
    pkView.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200);
    //设置普通代理
    pkView.delegate = self;
    //设置数据代理
    pkView.dataSource = self;
    //设置背景颜色
    self.view.backgroundColor = [UIColor orangeColor];
    
    //添加显示PickerView
    [self.view addSubview:pkView];
    
}

//实现获取组数的协议函数
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    //返回3组
    return 3;
}

//实现每组的个数
-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    //每组10个元素
//    return 10;
    
    //或区别每组元素个数
    if(component == 0){
        return 5;
    }else if (component == 1){
        return 10;
    }else if (component == 2){
        return 7;
    }
    
    return 10;
    
}

//显示每个元素内容
-(NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    NSString* str = [NSString stringWithFormat:@"第%d组%d行",component+1,row+1];
    
    return str;
    
}

//设置每行高度
-(CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    
    return 40;

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
