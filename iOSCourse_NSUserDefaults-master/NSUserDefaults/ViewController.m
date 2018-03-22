//
//  ViewController.m
//  NSUserDefaults
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
    
    //写入按钮
    UIButton* btn_save = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn_save.frame = CGRectMake(150, 100, 80, 40);
    
    [btn_save setTitle:@"写入文件" forState:UIControlStateNormal];
    
    [btn_save addTarget:self action:@selector(pressSave) forControlEvents:UIControlEventTouchUpInside];

    //读出按钮
    UIButton* btn_read = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn_read.frame = CGRectMake(150, 200, 80, 40);
    
    [btn_read setTitle:@"读出文件" forState:UIControlStateNormal];
    
    [btn_read addTarget:self action:@selector(pressRead) forControlEvents:UIControlEventTouchUpInside];
    
    //添加按钮
    [self.view addSubview:btn_save];
    [self.view addSubview:btn_read];
    
}

//写入按钮函数
-(void) pressSave{
    
    //创建对象
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    
    //存储字符串对象
    [ud setObject:@"Michael" forKey:@"Name"];
    
    //存储数据对象
    NSNumber* num = [NSNumber numberWithInt:100];
    
    [ud setObject:num forKey:@"Number"];
    
    //不能存储动态创建对象
//    [ud setObject:self.view forKey:@"View"];
    
    //存储整型数据
    [ud setInteger:13 forKey:@"Age"];
    
    //存储BOOL
    [ud setBool:YES forKey:@"Choose"];
    
    //存储数组（非动态）
    NSArray* array = [NSArray arrayWithObjects:@"11",@"22",@"33",@"44",nil];
    
    [ud setObject:array forKey:@"Array"];
    
    //删除存储对象
    [ud removeObjectForKey:@"Array"];
    
    //......
    
}

-(void) pressRead{
    
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    
    //读取姓名
    id object01 = [ud objectForKey:@"Name"];
    
    NSString* name = object01;
    
    NSLog(@"name = %@",name);
    
    //读取年龄
    id object02 = [ud objectForKey:@"Age"];
    
    NSNumber* age = object02;
    
    NSLog(@"age = %@",age);
    
    //读取选择
    id object03 = [ud objectForKey:@"Choose"];
    
    BOOL choose = object03;
    
    NSLog(@"choose = %@",choose?@"YES":@"NO");
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
