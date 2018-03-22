//
//  ViewController.m
//  UITextField
//
//  Created by LittleHeap on 2017/5/9.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController 

@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //初始化
    self.textField = [[UITextField alloc] init];
    //设定文本输入区域
    self.textField.frame = CGRectMake(100, 180, 180, 40);
    //设置内容文字
    self.textField.text = @"用户名";
    //设置字体大小
    self.textField.font = [UIFont systemFontOfSize:16];
    //设置字体颜色
    self.textField.textColor = [UIColor blackColor];
    //设置边框风格
    self.textField.borderStyle = UITextBorderStyleLine;
    //设置虚拟键盘风格
    self.textField.keyboardType = UIKeyboardTypeDefault;
    //提示文字信息
    self.textField.placeholder = @"请输入用户名……";
    //是否作为密码输入
    self.textField.secureTextEntry = NO;
    //添加并显示
    [self.view addSubview:self.textField];
    //设置代理对象
    self.textField.delegate = self;
    
}

-(void) textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"开始编辑");
}

-(void) textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"结束编辑");
}

//是否可以开始编辑
-(BOOL) textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}
//是否可以结束编辑
-(BOOL) textFieldShouldEndEditing:(UITextField *)textField{
    return YES;
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //点击空白处使虚拟键盘回收
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
