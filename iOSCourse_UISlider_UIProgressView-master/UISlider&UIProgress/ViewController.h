//
//  ViewController.h
//  UISlider&UIProgress
//
//  Created by LittleHeap on 2017/5/8.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    //进度条对象（显示下载和视频播放进度）
    UIProgressView* _progressView;
    
    //滑动条对象（进行调整音乐音量等）
    UISlider* _slider;
}

@property(retain,nonatomic) UIProgressView* progressView;
@property(retain,nonatomic) UISlider* slider;

@end

