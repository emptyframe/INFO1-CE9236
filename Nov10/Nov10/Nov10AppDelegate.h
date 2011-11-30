//
//  Nov10AppDelegate.h
//  Nov10
//
//  Created by Calvin CHOI on 11/29/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BigView.h"

@interface Nov10AppDelegate : UIResponder <UIApplicationDelegate>
{
    BigView *bigView;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
