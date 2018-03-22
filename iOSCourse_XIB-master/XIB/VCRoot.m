//
//  VCRoot.m
//  XIB
//
//  Created by LittleHeap on 2017/5/15.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)pressLogin:(UIButton *)sender {

    NSString* uname = @"Tom";
    NSString* upassword = @"123123";
    if([_userName.text isEqual:uname] && [_passWord.text isEqual:upassword]){
        NSLog(@"登录成功");
    }else{
        NSLog(@"登录失败");
    }
}

- (IBAction)pressRegist:(UIButton *)sender {

}

//点击空白处收回键盘
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_userName resignFirstResponder];
    [_passWord resignFirstResponder];
}
@end
