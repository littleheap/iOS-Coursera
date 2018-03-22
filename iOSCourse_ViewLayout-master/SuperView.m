//
//  SuperView.m
//  ViewLayout
//
//  Created by LittleHeap on 2017/5/16.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView

-(void) createSubViews{
    
    //左上角方块
    _view01 = [[UIView alloc] init];
    _view01.frame = CGRectMake(0, 0, 40, 40);
    //右上角方块
    _view02 = [[UIView alloc] init];
    _view02.frame = CGRectMake(self.bounds.size.width-40, 0, 40, 40);
    //右下角方块
    _view03 = [[UIView alloc] init];
    _view03.frame = CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40);
    //左下角方块
    _view04 = [[UIView alloc] init];
    _view04.frame = CGRectMake(0, self.bounds.size.height-40, 40, 40);
    
    //添加颜色
    _view01.backgroundColor = [UIColor orangeColor];
    _view02.backgroundColor = [UIColor redColor];
    _view03.backgroundColor = [UIColor greenColor];
    _view04.backgroundColor = [UIColor yellowColor];
    _view05.backgroundColor = [UIColor blackColor];
    
    //添加视图
    [self addSubview:_view01];
    [self addSubview:_view02];
    [self addSubview:_view03];
    [self addSubview:_view04];
    [self addSubview:_view05];

}

//通过此函数重新设定子视图位置
-(void) layoutSubviews{
    //添加动画
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    //左上角方块
    _view01.frame = CGRectMake(0, 0, 40, 40);
    //右上角方块
    _view02.frame = CGRectMake(self.bounds.size.width-40, 0, 40, 40);
    //右下角方块
    _view03.frame = CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40);
    //左下角方块
    _view04.frame = CGRectMake(0, self.bounds.size.height-40, 40, 40);
    
    [UIView commitAnimations];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
