//
//  VCSecond.m
//  多界面传值
//
//  Created by LittleHeap on 2017/5/23.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem* barChange = [[UIBarButtonItem alloc] initWithTitle:@"ChangeColor" style:UIBarButtonItemStyleDone target:self action:@selector(pressChange)];
    
    self.navigationItem.rightBarButtonItem = barChange;
}

-(void) pressChange{
    
    //点击按钮时触发代理事件
    [_delegate changeColor:[UIColor whiteColor]];

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
