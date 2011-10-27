//
//  main.m
//  Cross
//
//  Created by Calvin CHOI on 10/25/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CrossAppDelegate.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([CrossAppDelegate class]));
    [pool release];
    return retVal;
}
