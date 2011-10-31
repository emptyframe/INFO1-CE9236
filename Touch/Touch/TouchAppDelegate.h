//
//  TouchAppDelegate.h
//  Touch
//
//  Created by Calvin CHOI on 10/30/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

@class View;

@interface TouchAppDelegate : NSObject <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
