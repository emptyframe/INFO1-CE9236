//
//  View.h
//  Dec1
//
//  Created by Calvin CHOI on 12/1/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View : UIView
{
    UIView *paddle;
    UIView *ball;
    UIView *brick;
    CGFloat dx, dy; // direction and speed of ball's motion
    NSArray *wall;
}

- (void) move: (CADisplayLink *) displayLink;

@end
