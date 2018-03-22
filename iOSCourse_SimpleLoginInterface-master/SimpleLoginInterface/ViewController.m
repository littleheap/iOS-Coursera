//
//  ViewController.m
//  SimpleLoginInterface
//
//  Created by LittleHeap on 2017/5/10.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //用户名标签创建
    _username = [[UILabel alloc] init];
    _username.frame = CGRectMake(40, 100, 80, 40);
    _username.text = @"用户名：";
    _username.font = [UIFont systemFontOfSize:16];
    _username.textAlignment = NSTextAlignmentLeft;
    
    //密码标签创建
    _password = [[UILabel alloc] init];
    _password.frame = CGRectMake(40, 140, 80, 40);
    _password.text = @"密码：";
    _password.font = [UIFont systemFontOfSize:16];
    _password.textAlignment = NSTextAlignmentLeft;
    
    //用户名输入框
    _userName = [[UITextField alloc] init];
    _userName.frame = CGRectMake(140, 100, 200, 35);
    _userName.placeholder = @"请输入用户名";
    _userName.borderStyle = UITextBorderStyleRoundedRect;
    
    //密码输入框
    _passWord = [[UITextField alloc] init];
    _passWord.frame = CGRectMake(140, 140, 200, 35);
    _passWord.placeholder = @"请输入密码";
    _passWord.borderStyle = UITextBorderStyleRoundedRect;
    _passWord.secureTextEntry = YES;
    
    //登录按钮
    _login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _login.frame = CGRectMake(140, 200,100, 100);
    [_login setTitle:@"登录" forState:UIControlStateNormal];
    [_login addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    //注册按钮
    _regist = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _regist.frame = CGRectMake(140, 250, 100, 100);
    [_regist setTitle:@"注册" forState:UIControlStateNormal];
    [_regist addTarget:self action:@selector(regist) forControlEvents:UIControlEventTouchUpInside];
    
    //添加并显示控件
    [self.view addSubview:_username];
    [self.view addSubview:_password];
    [self.view addSubview:_userName];
    [self.view addSubview:_passWord];
    [self.view addSubview:_login];
    [self.view addSubview:_regist];
    
}

//登录函数
-(void) login{
    //设置预先用户名密码
    NSString* name = @"Tom";
    NSString* pass = @"123";
    //获取输入的用户名密码
    NSString* strTextName = _userName.text;
    NSString* strTextPass = _passWord.text;
    //比对用户名密码
    if([name isEqualToString:strTextName] && [pass isEqualToString:strTextPass]){
        NSLog(@"用户名密码正确");
        //提示
        UIAlertView* alView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"验证成功" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil];
        [alView show];
    }else{
        //提示
        UIAlertView* alView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"验证失败" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil];
        [alView show];
    }
}

//注册函数
-(void) regist{

}

//点击空白收回键盘
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_userName resignFirstResponder];
    [_passWord resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
