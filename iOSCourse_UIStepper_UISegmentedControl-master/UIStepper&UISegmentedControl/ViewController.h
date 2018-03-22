//
//  ViewController.h
//  UIStepper&UISegmentedControl
//
//  Created by LittleHeap on 2017/5/8.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    //定义步进器对象
    //按照一定的数字来调整某个数据对象
    UIStepper* _stepper;
    
    //定义分栏控制器对象
    UISegmentedControl* _segment;
}

//属性的定义
@property(retain,nonatomic)UIStepper* stepper;
@property(retain,nonatomic)UISegmentedControl* segment;


@end

