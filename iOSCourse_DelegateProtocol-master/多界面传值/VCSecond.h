//
//  VCSecond.h
//  多界面传值
//
//  Created by LittleHeap on 2017/5/23.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

//自定义代理协议
@protocol VCSecondDelegate <NSObject>

//定义协议函数，改变背景颜色
-(void) changeColor:(UIColor*) color;

@end

@interface VCSecond : UIViewController

@property (assign,nonatomic) NSInteger tag;
//定义一个代理对象
@property (assign,nonatomic) id<VCSecondDelegate> delegate;

@end
