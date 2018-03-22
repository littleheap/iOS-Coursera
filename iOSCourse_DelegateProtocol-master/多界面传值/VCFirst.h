//
//  VCFirst.h
//  多界面传值
//
//  Created by LittleHeap on 2017/5/23.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VCSecond.h"

@interface VCFirst : UIViewController<VCSecondDelegate>

//引入自定义协议并实现函数方法
-(void) changeColor:(UIColor *)color;

@end
