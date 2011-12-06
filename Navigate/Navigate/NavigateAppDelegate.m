//
//  NavigateAppDelegate.m
//  Navigate
//
//  Created by Calvin CHOI on 12/6/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "NavigateAppDelegate.h"
#import "ViewController.h"

@implementation NavigateAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    names = [NSArray arrayWithObjects:
             @"Grand Central Terminal",
             @"Harlem-125th St.",
             @"Yankees-E. 153rd St.",
             @"Morris Heights",
             @"University Heights",
             @"Marble Hill",
             @"Spuyten Duyvil",
             @"Riverdale",
             
             //Westchester County
             @"Ludlow",
             @"Yonkers",
             @"Glenwood",
             @"Greystone",
             @"Hastings-on-Hudson",
             @"Dobbs Ferry",
             @"Ardsley-on-Hudson",
             @"Irvington",
             @"Tarrytown",
             @"Philipse Manor",
             @"Scarborough",
             @"Ossining",
             @"Croton-Harmon",
             @"Cortlandt",
             @"Peekskill",
             
             //Putnam County
             @"Manitou",
             @"Garrison",
             @"Cold Springs",
             @"Breakneck Ridge",
             
             //Dutchess County
             @"Beacon",
             @"New Hamburg",
             @"Poughkeepsie",
             nil
             ];
    
    NSString *firstName = [names objectAtIndex: 0];
    ViewController *firstController = [[ViewController alloc] initWithTitle: firstName];
    visited = [NSMutableArray arrayWithObject: firstController];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[visited objectAtIndex: 0]];
    [self.window makeKeyAndVisible];
    return YES;
}

// Called when user touches a View.

- (void) nextStation {
    UINavigationController *navigationController = (UINavigationController *) self.window.rootViewController;
    
    NSUInteger i = navigationController.viewControllers.count;
    if (i == names.count) {
        //We are currently visiting the last station, and can go no further.
        return;
        
    }
    
    if (visited.count <= i) {
        // This station is visited for the 1st time.
        [visited addObject: [[ViewController alloc] initWithTitle: [names objectAtIndex: i]]];
    }
    
    [navigationController pushViewController: [visited objectAtIndex: i] animated: YES];
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
