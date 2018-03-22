//
//  AppDelegate.m
//  多界面传值
//
//  Created by LittleHeap on 2017/5/23.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];
    
    //视图一
    VCFirst* vcfirst = [[VCFirst alloc] init];
    
    vcfirst.view.backgroundColor = [UIColor greenColor];
    
    vcfirst.title = @"视图一";
    
    UINavigationController* nav1 = [[UINavigationController alloc] initWithRootViewController:vcfirst];
    
    //视图三
    VCThird* vcthird = [[VCThird alloc] init];
    
    vcthird.title = @"视图三";
    
    vcthird.view.backgroundColor = [UIColor orangeColor];
    
    UINavigationController* nav3 = [[UINavigationController alloc] initWithRootViewController:vcthird];

    NSArray* array = [NSArray arrayWithObjects:nav1,nav3,nil];
    
    UITabBarController* tab = [[UITabBarController alloc] init];
    
    tab.viewControllers = array;
    
    self.window.rootViewController = tab;
    
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
