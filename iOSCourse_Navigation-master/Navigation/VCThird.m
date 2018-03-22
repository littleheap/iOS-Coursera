//
//  VCThird.m
//  Navigation
//
//  Created by LittleHeap on 2017/5/18.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置背景颜色用来区分
    self.view.backgroundColor = [UIColor redColor];
    //设置标题
    self.title = @"View Third";
    
    //自己手动创建左侧按钮
    UIBarButtonItem* btnBack = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    //设置左侧按钮为自己创建的按钮
    self.navigationItem.leftBarButtonItem = btnBack;
}

-(void) pressBack{
    //将当前的视图控制器弹出
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
