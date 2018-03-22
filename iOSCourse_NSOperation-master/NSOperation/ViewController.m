//
//  ViewController.m
//  NSOperation
//
//  Created by LittleHeap on 2017/5/30.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for(int i = 0 ; i < 2 ; i++){
        
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
        btn.frame = CGRectMake(120, 100+50*i, 160, 40);
        
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        btn.tag = 101+i;
        
        if(i == 0){
            [btn setTitle:@"添加新任务1到队列中" forState:UIControlStateNormal];
        }else{
            [btn setTitle:@"添加新任务2到队列中" forState:UIControlStateNormal];
        }
        
        [self.view addSubview:btn];
        
    }
    
    //创建一个任务队列
    _queue = [[NSOperationQueue alloc] init];
    
    //设置最大并发任务数量
    [_queue setMaxConcurrentOperationCount:5];
    
}

-(void) pressBtn:(UIButton*) btn{

    if(btn.tag == 101){
        
        //第一种方式：
        //创建一个执行任务
        NSInvocationOperation* iop = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(optAct01:) object:@"OPT01"];
        
        //将任务添加到队列
        [_queue addOperation:iop];
        
        //第二种方式：
        NSInvocation* invo = [[NSInvocation alloc] init];
        
        invo.target = self;
        
        invo.selector = @selector(optAct01:);
        
        NSInvocationOperation* iop2 = [[NSInvocationOperation alloc] initWithInvocation:invo];
        
        [_queue addOperation:iop2];
        
    }else if(btn.tag == 102){
        
        //使用block语法块进行任务处理
        [_queue addOperationWithBlock:^{
            while (true) {
                NSLog(@"Block");
            }
        }];
    
    }
    
    
}

-(void) optAct01:(NSInvocationOperation*) opt{
    
    while (true) {
        NSLog(@"OPT 01");
    }

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
