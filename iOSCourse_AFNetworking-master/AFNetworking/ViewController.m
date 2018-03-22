//
//  ViewController.m
//  AFNetworking
//
//  Created by LittleHeap on 2017/5/30.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [self AFNetMonitor];
    
    [self AFGetData];
}

-(void) AFGetData{
    
    //创建HTTP连接管理对象
    AFHTTPSessionManager* session = [AFHTTPSessionManager manager];
    
    //通过GET方法获取服务器数据
    //P1:传入一个URL接口对象
    //P2:通过指定的解构传入参数
    //P3:指定下载进度条UI
    //P4:下载成功调用
    //P5:下载失败调用
    [session GET:@"https://api.douban.com/v2/book/1220562" parameters:nil progress:nil success:^(NSURLSessionDataTask* _Nonnull task, id _Nullable responseObject){
        
        NSLog(@"下载成功");
        
        if([responseObject isKindOfClass:[NSDictionary class]]){
            //输出JSON内容
            NSLog(@"%@",responseObject);
        }
        
    } failure:^(NSURLSessionDataTask* _Nullable task, NSError* _Nonnull error){
    
        NSLog(@"下载失败");
    
    }];

}

-(void) AFNetMonitor{
    
    //用来检测网络链接状态
    //网络连接检测管理类
    
    //开启网络状态监控器
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    //获取网络连接的结果
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status){
        
        switch (status) {
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"无网络连接");
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"通过WiFi链接网络");
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"通过移动网络链接");
                break;
            default:
                break;
        }
    
    }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
