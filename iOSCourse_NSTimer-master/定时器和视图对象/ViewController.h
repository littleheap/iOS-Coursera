//
//  ViewController.h
//  定时器和视图对象
//
//  Created by LittleHeap on 2017/5/7.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    //定义一个定时器对象,每隔固定时间可以发送一条消息
    NSTimer* _timerView;

}

//定时器的属性对象
@property (retain,nonatomic) NSTimer* timerView;

@end

