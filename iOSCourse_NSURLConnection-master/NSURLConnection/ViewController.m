//
//  ViewController.m
//  NSURLConnection
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
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(140, 100, 100, 40);
    
    [btn setTitle:@"Connect" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

-(void) pressBtn{
    
    //定义一个字符串网址
    NSString* strURL = @"http://www.baidu.com";
    
    //将字符串转换为链接地址
    NSURL*  url = [NSURL URLWithString:strURL];
    
    //定义一个连接请求对象
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    
    //创建一个网络链接
    _connect = [NSURLConnection connectionWithRequest:request delegate:self];
    
    //初始化_data
    _data = [[NSMutableData alloc] init];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//处理错误信息的代理协议
//有任何链接错误时，触发
-(void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"error = %@",error);
}

//处理服务器的响应码
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    
    //将响应码转换为HTTP响应码
    NSHTTPURLResponse* res = response;
    
    if(res.statusCode == 200){
        NSLog(@"Connect successed !");
    }else if (res.statusCode == 404){
        NSLog(@"Server normal , but nothing found .");
    }else if (res.statusCode == 500){
        NSLog(@"Server closed");
    }
    
}

//接受服务器回传的数据
-(void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    
    //将每次回传的数据链接起来
    [_data appendData:data];

}

//连接结束加载
-(void) connectionDidFinishLoading:(NSURLConnection *)connection{
    
    //将二进制数据转换为字符串
    NSString* str = [[NSString alloc] initWithData:_data encoding:NSUTF8StringEncoding];
    
    NSLog(@"Baidu page = %@",str);
}

@end
