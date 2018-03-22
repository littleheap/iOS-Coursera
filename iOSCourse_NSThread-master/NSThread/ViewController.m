//
//  ViewController.m
//  NSThread
//
//  Created by LittleHeap on 2017/5/29.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    for(int i = 0 ; i < 3 ; i++){
        
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        btn.frame = CGRectMake(140, 100+50*i, 100, 40);
        
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        btn.tag = 101 + i;
        
        if(i == 0){
            [btn setTitle:@"Thread" forState:UIControlStateNormal];
        }else if(i == 1){
            [btn setTitle:@"Thread01" forState:UIControlStateNormal];
        }else if(i == 2){
            [btn setTitle:@"Thread02" forState:UIControlStateNormal];
        }
        
        [self.view addSubview:btn];

    }
    
    //做一个加锁操作
    _lock = [[NSLock alloc] init];
    
}

-(void) pressBtn:(UIButton*) btn{

    if(btn.tag == 101){
        
        //创建一个线程
        NSThread* newThread = [[NSThread alloc] initWithTarget:self selector:@selector(actNew:) object:nil];
        //启动该线程
        [newThread start];
    
    }else if (btn.tag == 102){
        
        //创建并启动线程
        [NSThread detachNewThreadSelector:@selector(actThread01) toTarget:self withObject:nil];
        
    }else{
        
        //创建并启动线程
        _thread02 = [[NSThread alloc] initWithTarget:self selector:@selector(actThread02) object:nil];
        
        //开启线程
        [_thread02 start];
    }
}

-(void) actNew:(NSThread*) thread{
    
    int i = 0;
    
    while (true) {
        i++;
        NSLog(@"New = %d" , i);
    }
}

-(void) actThread01{
    
    int i = 0;
    
    while (true) {
//        NSLog(@"T1");
        i++;
        if(i > 10000){
            break;
        }
        
        //加锁操作
        [_lock lock];
        
        _counter++;
        
        //解锁操作
        [_lock unlock];
        
        NSLog(@"c1 = %ld" , _counter);
    }
    
    NSLog(@"C1 final = %ld" , _counter);
}

-(void) actThread02{
    
    int i = 0;
    
    while (true) {
        NSLog(@"T2");
        i++;
        if(i > 10000){
            break;
        }
        
        //加锁操作
        [_lock lock];
        
        _counter++;
        
        //解锁操作
        [_lock unlock];
        
        NSLog(@"c2 = %ld" , _counter);
    }
    
    NSLog(@"C2 final = %ld" , _counter);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
