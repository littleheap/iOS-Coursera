//
//  VCSecond.m
//  Navigation
//
//  Created by LittleHeap on 2017/5/18.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "VCSecond.h"
#import "VCThird.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置背景颜色用来区分
    self.view.backgroundColor = [UIColor greenColor];
    //设置标题
    self.title = @"View Second";
    //生成按钮
    UIBarButtonItem* btnNext = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStyleDone target:self action:@selector(pressNext)];
    //添加按钮到导航栏
    self.navigationItem.rightBarButtonItem = btnNext;

}

-(void) pressNext{
    
    VCThird* thr = [[VCThird alloc] init];
    
    [self.navigationController pushViewController:thr animated:YES];
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
