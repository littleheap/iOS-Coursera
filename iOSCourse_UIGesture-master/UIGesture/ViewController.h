//
//  ViewController.h
//  UIGesture
//
//  Created by LittleHeap on 2017/5/13.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>{

    UIImageView* _myImageView;
    
    //定义一个缩放手势，用来对视图进行放大缩小
    UIPinchGestureRecognizer* _pinchGes;
    
    //定义一个旋转手势
    UIRotationGestureRecognizer* _rotGes;
}


@end

