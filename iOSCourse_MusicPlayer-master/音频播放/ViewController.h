//
//  ViewController.h
//  音频播放
//
//  Created by LittleHeap on 2017/5/31.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

//导入视频音频播放系统库
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<AVAudioPlayerDelegate>
{
    //播放按钮
    UIButton* _btnPlay;
    
    //暂停按钮
    UIButton* _btnPause;
    
    //停止按钮
    UIButton* _btnStop;
    
    //播放进度条
    UIProgressView* _musicProgress;
    
    //音量调整滑动条
    UISlider* _volumeSlider;
    
    //静音选项
    UISwitch* _volumeOnOff;
    
    //音频播放器
    AVAudioPlayer* _player;
    
    //定时器
    NSTimer* _timer;

}

@end

