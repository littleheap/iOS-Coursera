//
//  ViewController.h
//  AutoViewLayout
//
//  Created by LittleHeap on 2017/5/17.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    //父视图
    UIView* _superView;
    //左上角
    UILabel* _label01;
    //右上角
    UILabel* _label02;
    //右下角
    UILabel* _label03;
    //左下角
    UILabel* _label04;
    //中间条
    UIView* _viewCenter;
}


@end

