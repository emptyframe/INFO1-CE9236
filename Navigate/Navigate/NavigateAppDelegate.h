//
//  NavigateAppDelegate.h
//  Navigate
//
//  Created by Calvin CHOI on 12/6/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavigateAppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *_window;
    NSArray *names;
    NSMutableArray *visited;
}

- (void) nextStation;

@property (strong, nonatomic) UIWindow *window;

@end
