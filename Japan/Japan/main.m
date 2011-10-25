//
//  main.m
//  Japan
//
//  Created by Calvin CHOI on 10/24/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JapanAppDelegate.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([JapanAppDelegate class]));
    [pool release];
    return retVal;
}
