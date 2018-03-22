//
//  SuperView.h
//  ViewLayout
//
//  Created by LittleHeap on 2017/5/16.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuperView : UIView{
    
    UIView* _view01;
    UIView* _view02;
    UIView* _view03;
    UIView* _view04;
    UIView* _view05;
    
}

-(void) createSubViews;

-(void) layoutSubviews;

@end
