//
//  VCRoot.m
//  PhotoWall
//
//  Created by LittleHeap on 2017/5/22.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "VCRoot.h"
#import "VCImageShow.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"照片墙";
    //导航栏不透明
    self.navigationController.navigationBar.translucent = NO;
    //创建滚动视图
    UIScrollView* sv = [[UIScrollView alloc] init];
    //设置位置大小
    sv.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    //设置画布大小
    sv.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, 1000);
    //打开交互事件
    sv.userInteractionEnabled = YES;
    
    sv.backgroundColor = [UIColor whiteColor];
    
    //隐藏滚动条
    sv.showsVerticalScrollIndicator = NO;
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    //循环添加图片
    for(int i = 0 ; i < 11 ; i++){
        NSString* strName = [NSString stringWithFormat:@"IMG_10%d.JPG", i+23];
        
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iView = [[UIImageView alloc] initWithImage:image];
        
        iView.frame = CGRectMake((i%3)*[UIScreen mainScreen].bounds.size.width/3, (i/3)*200, [UIScreen mainScreen].bounds.size.width/3, 200);
        
        [sv addSubview:iView];
        
        //开启交互模式
        iView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pressTaps:)];
        //单次点击
        tap.numberOfTapsRequired = 1;
        //单个手指
        tap.numberOfTouchesRequired = 1;
        //赋值tag
        iView.tag = 23+i;
        
        [iView addGestureRecognizer:tap];
        
    }
    
    [self.view addSubview:sv];
    
}

-(void) pressTaps:(UITapGestureRecognizer*) tap{
    
    UIImageView* imageView = tap.view;
    
    //创建视图显示控制器
    VCImageShow* imageShow = [[VCImageShow alloc] init];
    
    //点击图像视图赋值
    //传imageView（bug操作）
    //imageShow.imageView = imageView;
    
    //传image（可行）
    imageShow.image = imageView.image;
    
    //弹出显示图片控制器
    [self.navigationController pushViewController:imageShow animated:YES];
    
}

-(void) pressTap:(UITapGestureRecognizer*)tap{
    
    UIImageView* imageView = tap.view;
    
    //创建视图显示控制器
    VCImageShow* imageShow = [[VCImageShow alloc] init];
    
    imageShow.imageTag = imageView.tag;
    
    //弹出显示图片控制器
    [self.navigationController pushViewController:imageShow animated:YES];
    
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
