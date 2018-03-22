//
//  VCImageShow.h
//  PhotoWall
//
//  Created by LittleHeap on 2017/5/22.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCImageShow : UIViewController

//图像视图的tag
@property(nonatomic,assign) NSUInteger imageTag;
//图像对象
@property(nonatomic,retain) UIImage* image;
//图像视图的对象(不可行)
@property(nonatomic,retain) UIImageView* imageView;

@end
