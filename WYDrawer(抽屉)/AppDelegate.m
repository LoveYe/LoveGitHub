//
//  AppDelegate.m
//  WYDrawer(抽屉)
//
//  Created by qianfeng001 on 15/9/28.
//  Copyright (c) 2015年 王烨. All rights reserved.
//

#import "AppDelegate.h"
#import <MMDrawerController/MMDrawerController.h>
#import "LeftViewController.h"
#import "CenterViewController.h"
#import "RightViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]  bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    LeftViewController *left = [LeftViewController new];
    left.title = @"Left";
    UINavigationController *leftNava =[[UINavigationController alloc] initWithRootViewController:left];
    
    RightViewController *right = [RightViewController new];
    right.title =@"Right";
    UINavigationController *rightNava =[[UINavigationController alloc] initWithRootViewController:right];
    
    CenterViewController *center = [CenterViewController new];
    center.title = @"Center";
    UINavigationController *centerNava =[[UINavigationController alloc] initWithRootViewController:center];
    
    MMDrawerController *mmdrawerController = [[MMDrawerController alloc] initWithCenterViewController:centerNava leftDrawerViewController:leftNava rightDrawerViewController:rightNava];
    self.window.rootViewController = mmdrawerController;
    [mmdrawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [mmdrawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    //左右宽度
//    mmdrawerController.maximumLeftDrawerWidth = 100;
//    mmdrawerController.maximumRightDrawerWidth = 20;
    //阴影
    [mmdrawerController setShowsShadow: YES];
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
