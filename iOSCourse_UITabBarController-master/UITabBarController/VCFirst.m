//
//  VCFirst.m
//  UITabBarController
//
//  Created by LittleHeap on 2017/5/19.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个分栏按钮对象
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"First" image:nil tag:101];
    self.tabBarItem = tabBarItem;
    
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
