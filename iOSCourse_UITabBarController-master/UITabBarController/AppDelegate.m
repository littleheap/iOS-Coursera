//
//  AppDelegate.m
//  UITabBarController
//
//  Created by LittleHeap on 2017/5/19.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCSix.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //显示window
    [self.window makeKeyAndVisible];
    
    //创建第一个视图控制器
    VCFirst* vcFirst = [[VCFirst alloc] init];
    //设置蓝色
    vcFirst.view.backgroundColor = [UIColor blueColor];
    //创建第二个视图控制器
    VCSecond* vcSecond = [[VCSecond alloc] init];
    //设置黄色
    vcSecond.view.backgroundColor = [UIColor yellowColor];
    //创建第三个视图控制器
    VCThird* vcThird = [[VCThird alloc] init];
    //设置橙色
    vcThird.view.backgroundColor = [UIColor orangeColor];
    
    //vcFirst.title = @"First View";
    vcSecond.title = @"Second View";
    vcThird.title = @"Third View";
    
    //高级进阶
    //创建456视图控制器
    VCFour* vc04 = [[VCFour alloc] init];
    VCFive* vc05 = [[VCFive alloc] init];
    VCSix* vc06 = [[VCSix alloc] init];
    //设置456背景颜色
    vc04.view.backgroundColor = [UIColor grayColor];
    vc05.view.backgroundColor = [UIColor purpleColor];
    vc06.view.backgroundColor = [UIColor redColor];
    //设置456标题
    vc04.title = @"View 04";
    vc05.title = @"View 05";
    vc06.title = @"View 06";
    
    
    //创建分栏控制器
    UITabBarController* tbController = [[UITabBarController alloc]init];
    //创建控制器数组
    NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst,vcSecond,vcThird,vc04,vc05,vc06,nil];
    //将分栏控制器管理控制器数组
    tbController.viewControllers = arrayVC;
    //显示分栏控制器
    self.window.rootViewController = tbController;
    //设置选中视图控制器的索引
    tbController.selectedIndex = 0;
    if(tbController.selectedViewController == vcThird){
        NSLog(@"Third Current");
    }
    //设置分栏控制器的透明度
    tbController.tabBar.translucent = NO;
    
    //高级进阶
    //改变工具栏颜色
    tbController.tabBar.barTintColor = [UIColor whiteColor];
    //改变按钮风格颜色
    tbController.tabBar.tintColor = [UIColor blackColor];
    //设置代理
    tbController.delegate = self;
    
    return YES;
}

//开始编辑前
-(void) tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers{

}
//结束编辑前
-(void) tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed{

}
//已经结束编辑
-(void) tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed{
    
    if(changed == YES){
        NSLog(@"顺序已经改变");
    }
    //打印当前分栏序列
    NSLog(@"vcs = %@", viewControllers);
    
}
//选中控制器对象
-(void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    //对应下标验证（此时不可点击More）
//    if(tabBarController.viewControllers[tabBarController.selectedIndex] == viewController){
//        NSLog(@"OK");
//    }
    
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
