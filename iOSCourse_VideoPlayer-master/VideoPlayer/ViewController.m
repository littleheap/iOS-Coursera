//
//  ViewController.m
//  VideoPlayer
//
//  Created by LittleHeap on 2017/6/2.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //视频网络地址
    NSString* strURL01 = @"http://pic.qiantucdn.com/58pic/shipin/17/09/84/17098445.mp4";
    
    NSString* strURL02 = @"http://pic.qiantucdn.com/58pic/shipin/14/45/83/14458328.mp4";

    //转化URL格式
    NSURL* url01 = [NSURL URLWithString:strURL01];
    
    NSURL* url02 = [NSURL URLWithString:strURL02];
    
    //创建视频播放器对象(不可以翻屏)
    _playerController = [[MPMoviePlayerController alloc] initWithContentURL:url01];
    
    //设置位置
    _playerController.view.frame = CGRectMake(0, 0, 400, 300);
    
    //视频下载后的处理
    [_playerController prepareToPlay];
    
    //添加到视图上
    [self.view addSubview:_playerController.view];
    
    
    //创建视图播放控制器(可以翻屏)
    _playerView = [[MPMoviePlayerViewController alloc] initWithContentURL:url02];

    _playerView.view.frame = CGRectMake(0, 400, 400, 300);
    
    [self.view addSubview:_playerView.view];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
