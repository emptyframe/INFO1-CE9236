//
//  ActivityAppDelegate.h
//  Activity
//
//  Created by Calvin CHOI on 12/13/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface ActivityAppDelegate : UIResponder <UIApplicationDelegate>
{
    View *view;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
