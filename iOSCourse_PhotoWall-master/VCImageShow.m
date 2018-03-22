//
//  VCImageShow.m
//  PhotoWall
//
//  Created by LittleHeap on 2017/5/22.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "VCImageShow.h"

@interface VCImageShow ()

@end

@implementation VCImageShow

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _imageView = [[UIImageView alloc] init];
    
    _imageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
    //可行的方法一
    _imageView.image = _image;
    
    //可行的方法二
//    _imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"IMG_10%lu.JPG",_imageTag]];
    
    
    self.title = @"图片显示";
    
    [self.view addSubview:_imageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
