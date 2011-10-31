//
//  main.m
//  Touch
//
//  Created by Calvin CHOI on 10/30/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TouchAppDelegate.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([TouchAppDelegate class]));
    [pool release];
    return retVal;
}
