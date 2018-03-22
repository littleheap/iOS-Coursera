//
//  ViewController.h
//  UITextField
//
//  Created by LittleHeap on 2017/5/9.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>{
    //定义一个TextField对象
    UITextField* _textField;
}

@property(retain,nonatomic) UITextField* textField;


@end

