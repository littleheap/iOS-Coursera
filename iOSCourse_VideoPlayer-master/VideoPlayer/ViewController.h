//
//  ViewController.h
//  VideoPlayer
//
//  Created by LittleHeap on 2017/6/2.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

//导入苹果官方播放器文件
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController{

    //定义一个播放器对象
    MPMoviePlayerController* _playerController;
    
    //定义一个播放器视图视图控制器
    MPMoviePlayerViewController* _playerView;

}


@end

