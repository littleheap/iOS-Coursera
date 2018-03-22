//
//  ViewController.m
//  AutoViewLayout
//
//  Created by LittleHeap on 2017/5/17.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _superView = [[UIView alloc] init];
    
    _superView.frame = CGRectMake(20, 20, 180, 280);
    
    _superView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:_superView];
    
    //左上角
    _label01 = [[UILabel alloc] init];
    
    _label01.frame = CGRectMake(0, 0, 40, 40);
    
    _label01.text = @"01";
    
    _label01.backgroundColor = [UIColor grayColor];
    
    //右上角
    _label02 = [[UILabel alloc] init];
    
    _label02.frame = CGRectMake(180-40, 0, 40, 40);
    
    _label02.text = @"02";
    
    _label02.backgroundColor = [UIColor orangeColor];
    
    //右下角
    _label03 = [[UILabel alloc] init];
    
    _label03.frame = CGRectMake(180-40, 280-40, 40, 40);
    
    _label03.text = @"03";
    
    _label03.backgroundColor = [UIColor blueColor];
    
    //左下角
    _label04 = [[UILabel alloc] init];
    
    _label04.frame = CGRectMake(0, 280-40, 40, 40);
    
    _label04.text = @"04";
    
    _label04.backgroundColor = [UIColor greenColor];
    
    //添加到父视图
    [_superView addSubview:_label01];
    [_superView addSubview:_label02];
    [_superView addSubview:_label03];
    [_superView addSubview:_label04];
    
    //中间条
    _viewCenter = [[UIView alloc] init];
    
    _viewCenter.frame = CGRectMake(0, 0, _superView.bounds.size.width, 40);
    
    _viewCenter.center = CGPointMake(180/2, 280/2);
    
    _viewCenter.backgroundColor = [UIColor redColor];
    
    [_superView addSubview:_viewCenter];
    
    //自动调整相对布局
    _label02.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    _label03.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin;
    _label04.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    
    _viewCenter.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    static BOOL isLarge = NO;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    
    if(isLarge == NO){
        _superView.frame = CGRectMake(10, 10, 300, 480);
    }else{
        _superView.frame = CGRectMake(20, 20, 180, 180);
    }
    
    [UIView commitAnimations];
    
    isLarge = !isLarge;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
