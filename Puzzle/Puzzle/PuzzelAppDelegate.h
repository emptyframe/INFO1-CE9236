//
//  PuzzelAppDelegate.h
//  Puzzle
//
//  Created by Calvin CHOI on 11/28/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface PuzzelAppDelegate : UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
