//
//  ViewController.h
//  UIAlertView&UIActivityIndicatorView
//
//  Created by LittleHeap on 2017/5/9.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    //定义一个警告对话框对象
    UIAlertView* _alerView;
    UIAlertController* _alertController;
    //定义一个等待提示对象
    UIActivityIndicatorView* _indicatorView;
}

@property(retain,nonatomic) UIAlertView* alertView;
@property(retain,nonatomic) UIActivityIndicatorView* indicatorView;
@property(retain,nonatomic) UIAlertController* alertController;

@end

