//
//  RDAppDelegate.m
//  RubyDay2013
//
//  Created by Federico Ravasio on 6/1/13.
//  Copyright (c) 2013 Webrain. All rights reserved.
//

#import "RDAppDelegate.h"
#import "RDMainTabBarViewController.h"
#import <dlfcn.h>

@implementation RDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self customizeAppearance];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.window.rootViewController = [[RDMainTabBarViewController alloc] init];

    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)customizeAppearance
{
    UIImage *navBackgroundImage = [UIImage imageNamed:@"topbar"];
    UIColor *rubyRedColor = [UIColor colorWithRed:171/255.0 green:60/255.0 blue:30/255.0 alpha:1.0];
    UIFont *eurostileNavBarBold = [UIFont fontWithName:@"EurostileBold" size:21.0];
    UIFont *eurostileTabBarBold = [UIFont fontWithName:@"EurostileBold" size:12.0];

    [[UINavigationBar appearance] setBackgroundImage:navBackgroundImage forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                UITextAttributeTextColor: rubyRedColor,
                                     UITextAttributeFont: eurostileNavBarBold,
                         UITextAttributeTextShadowOffset: @0 }];

    [[UIBarButtonItem appearance] setTintColor:rubyRedColor];

    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabbar"]];
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0.0, -2.0)];

    [[UITabBarItem appearance] setTitleTextAttributes:@{
                             UITextAttributeTextColor: [UIColor whiteColor],
                                  UITextAttributeFont:eurostileTabBarBold}
                                             forState:UIControlStateNormal];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
}

@end
