//
//  main.m
//  Hello
//
//  Created by Calvin CHOI on 10/17/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"HelloAppDelegate");
    [pool release];
    return retVal;
}
