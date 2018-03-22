//
//  ViewController.m
//  音频播放
//
//  Created by LittleHeap on 2017/5/31.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //播放按钮
    _btnPlay = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    _btnPlay.frame = CGRectMake(140, 100, 100, 50);
    
    [_btnPlay setTitle:@"Play" forState:UIControlStateNormal];
    
    [_btnPlay addTarget:self action:@selector(pressPlay) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btnPlay];
    
    //暂停按钮
    _btnPause = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    _btnPause.frame = CGRectMake(140, 150, 100, 50);
    
    [_btnPause setTitle:@"Pause" forState:UIControlStateNormal];
    
    [_btnPause addTarget:self action:@selector(pressPause) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btnPause];
    
    //停止按钮
    _btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    _btnStop.frame = CGRectMake(140, 200, 100, 50);
    
    [_btnStop  setTitle:@"Stop" forState:UIControlStateNormal];
    
    [_btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btnStop];
    
    //进度条
    _musicProgress = [[UIProgressView alloc] init];
    
    _musicProgress.frame = CGRectMake(40, 280, 300, 20);
    
    _musicProgress.progress = 0;
    
    [self.view addSubview:_musicProgress];
    
    //声音控制器
    _volumeSlider = [[UISlider alloc] init];
    
    _volumeSlider.frame = CGRectMake(40, 350, 300, 20);
    
    _volumeSlider.maximumValue = 100;
    
    _volumeSlider.minimumValue = 0;
    
    [_volumeSlider addTarget:self action:@selector(volumeChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_volumeSlider];
    
    [self createAVPlayer];
    
    //设置代理
    _player.delegate = self;
    
}

//创建音频控制器
-(void) createAVPlayer{
    
    NSString* str = [[NSBundle mainBundle] pathForResource:@"Nothing on you" ofType:@"mp3"];
    
    NSURL* url = [NSURL fileURLWithPath:str];
    
    //创建音频播放器对象
    _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    //准备播放
    [_player prepareToPlay];
    
    //循环播放次数
    _player.numberOfLoops = -1;
    
    //设置音量大小
    _player.volume = 0.5;
    
    //定时器更新进度条
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    
    
}

-(void) updateTime{
    
    _musicProgress.progress = _player.currentTime / _player.duration;

}

-(void) pressPlay{
    
    //开始播放
    [_player play];
}

-(void) pressPause{
    
    //暂停播放
    [_player pause];
}

-(void) pressStop{
    
    //停止播放
    [_player stop];
    
    //当前播放事件清零
    _player.currentTime = 0;
}

-(void) volumeChange:(UISlider*) slider{
    
    _player.volume = slider.value / 100;

}

//音乐播放完成调用
-(void) audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    //停用定时器
    [_timer invalidate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
