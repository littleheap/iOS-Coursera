//
//  AppDelegate.m
//  UIWindow
//
//  Created by LittleHeap on 2017/5/6.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//此函数用来初始化整个程序的框架结构
//整个程序对ios工程师的入口函数
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //创建一个UIWindow对象
    //整个程序只有一个UIWindow对象
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //创建一个视图控制器
    self.window.rootViewController = [[UIViewController alloc] init];
    //添加背景颜色
    self.window.backgroundColor = [UIColor orangeColor];
    //使UIWindow有效显示到屏幕上
    [self.window makeKeyAndVisible];
    
    //添加一个view
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(140, 100, 100, 100)];
    view.backgroundColor = [UIColor greenColor];
    [self.window addSubview:view];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
