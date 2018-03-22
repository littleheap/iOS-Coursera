//
//  ViewController.h
//  NSURLConnection
//
//  Created by LittleHeap on 2017/5/29.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//连接服务器的普通代理，错误处理时使用
NSURLConnectionDelegate,

//连接服务器对象的数据代理协议，回传数据时使用
NSURLConnectionDataDelegate
>
{
    //定义一个URL连接对象，可以进行客户端和服务器之间的连接
    //按Http协议进行传输数据工作
    NSURLConnection* _connect;

    //创建一个可变二进制数据对象，用来接受服务器传回数据
    NSMutableData* _data;
}

@end

