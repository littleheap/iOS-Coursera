//
//  ViewController.h
//  NSThread
//
//  Created by LittleHeap on 2017/5/29.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    //定义线程对象01
    NSThread* _thread01;
    //定义线程对象02
    NSThread* _thread02;
    
    //定义一个计时器
    NSInteger _counter;
    
    //定义一个线程锁对象
    NSLock* _lock;
}


@end

