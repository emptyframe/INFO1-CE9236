//
//  TabBarAppDelegate.m
//  TabBar
//
//  Created by Calvin CHOI on 12/5/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "TabBarAppDelegate.h"
#include "ViewController.h"

@implementation TabBarAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.rootViewController = [[UITabBarController alloc] init];
    
    ((UITabBarController *) self.window.rootViewController).viewControllers = 
        [NSArray arrayWithObjects: 
         [[ViewController alloc]
         initWithText: @"The Bronx is up" title: @"The Bronx" image: [UIImage imageNamed: @"bronx.png"] badge: nil
         ],
         [[ViewController alloc]
          initWithText: @"The Brooklyn is down" title: @"The Brooklyn" image: [UIImage imageNamed: @"brooklyn.png"] badge: nil
          ],
         [[ViewController alloc]
          initWithText: @"The Manhattan is center" 
          title: @"The Manhattan" 
          image: [UIImage imageNamed: @"manhattan.png"] 
          badge: @"4,5,6"
          ],
         [[ViewController alloc]
          initWithText: @"The Queens is rep" title: @"The Queens" image: [UIImage imageNamed: @"queens.png"] badge: @"E"
          ],
         [[ViewController alloc]
          initWithText: @"The Staten Island is where?" title: @"The Staten Island" image: [UIImage imageNamed: @"statenisland.png"] badge: nil
          ],
         nil
         ];
         
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
