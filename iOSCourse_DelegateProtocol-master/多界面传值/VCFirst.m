//
//  VCFirst.m
//  多界面传值
//
//  Created by LittleHeap on 2017/5/23.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "VCFirst.h"
#import "VCSecond.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//点击视图一空白处弹出视图二
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    //创建视图二
    VCSecond* vcsecond = [[VCSecond alloc] init];
    //添加背景颜色
    vcsecond.view.backgroundColor = [UIColor redColor];
    //将当前控制器作为代理
    vcsecond.delegate = self;
    
    //弹出视图二
    [self.navigationController pushViewController:vcsecond animated:YES];
    
}

//编辑代理函数
-(void)changeColor:(UIColor *)color{
    
    //改变背景颜色
    self.view.backgroundColor = color;
    
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
