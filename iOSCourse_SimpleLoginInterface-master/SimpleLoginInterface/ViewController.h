//
//  ViewController.h
//  SimpleLoginInterface
//
//  Created by LittleHeap on 2017/5/10.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    //用户名密码标签
    UILabel* _username;
    UILabel* _password;
    //用户名密码输入框
    UITextField* _userName;
    UITextField* _passWord;
    //登录注册按钮
    UIButton* _login;
    UIButton* _regist;
}


@end

