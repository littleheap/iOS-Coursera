//
//  VCRoot.h
//  XIB
//
//  Created by LittleHeap on 2017/5/15.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController

//使用XIB创建属性
//IBOutlet属性是在XIB中创建的
@property (weak, nonatomic) IBOutlet UILabel *username;

@property (weak, nonatomic) IBOutlet UILabel *password;

@property (weak, nonatomic) IBOutlet UITextField *userName;

@property (weak, nonatomic) IBOutlet UITextField *passWord;

@property (weak, nonatomic) IBOutlet UIButton *login;

@property (weak, nonatomic) IBOutlet UIButton *regist;

- (IBAction)pressLogin:(UIButton *)sender;

- (IBAction)pressRegist:(UIButton *)sender;



@end
