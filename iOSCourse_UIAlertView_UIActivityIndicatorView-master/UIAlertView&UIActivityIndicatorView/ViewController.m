//
//  ViewController.m
//  UIAlertView&UIActivityIndicatorView
//
//  Created by LittleHeap on 2017/5/9.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//同步
@synthesize alertView = _alerView;
@synthesize indicatorView = _indicatorView;
@synthesize alertController = _alertController;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建两个按钮
    for(int i = 0; i < 2; i++){
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(140, 100+100*i, 100, 100);
        if(i == 0){
            [btn setTitle:@"Alert" forState:UIControlStateNormal];
        }else{
            [btn setTitle:@"Indicator" forState:UIControlStateNormal];
        }
        btn.tag = 101+i;
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

-(void) pressBtn:(UIButton*) btn{
    
    if(btn.tag == 101){
        _alerView = [[UIAlertView alloc] initWithTitle:@"警告" message:@"您的手机电量过低，即将关机，请保存好数据" delegate:self cancelButtonTitle:@"取消"otherButtonTitles:@"OK", nil];
        //显示提示框
        [_alerView show];
    }else{
        _indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(140, 300, 80, 80)];
        //设置风格
        _indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        //添加并显示
        [self.view addSubview:_indicatorView];
        //启动并显示
        [_indicatorView startAnimating];
        //停止等待动画
//        [_indicatorView startAnimating];
    }
    
}

-(void) alertView:(UIAlertView*) alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"index = %ld",buttonIndex);
}

-(void) alertView:(UIAlertView*) alertView willDismissWithButtonIndex:(NSInteger)buttonIndex{
    NSLog(@"即将消失");
}

-(void) alertView:(UIAlertView*) alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    NSLog(@"已经消失");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
