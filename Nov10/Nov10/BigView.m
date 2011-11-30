//
//  BigView.m
//  Flip
//
//  Created by Calvin CHOI on 11/28/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "BigView.h"
#import "LittleView0.h"
#import "LittleView1.h"

@implementation BigView

- (id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        
        // this BigView is entirely occupied by a LittleView.
        
        views = [NSArray arrayWithObjects:
                 [[LittleView0 alloc] initWithFrame: self.bounds],
                 [[LittleView1 alloc] initWithFrame: self.bounds],
                 nil
                 ];
        
        index = 0;
        [self addSubview: [views objectAtIndex: index]];
    }
    
    return self;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    /* Assume a swipte has just ended.
     
     A more complicated program could
     distinguish between left vs. rights wipes, and perform a
     UIViewAnimationOptionTransitionFlipFromLeft or a
     UIViewAnimationOptionTransitionFlipFromRight.
     
     In UIViewAnimationOptionTransitionFlipFromLeft, the left edge moves
     to the right, and the right edge moves away from the user and to the
     left.
     
     */
    
    NSUInteger newIndex = 1 - index; // toggle the index
    
    [UIView transitionFromView: [views objectAtIndex: index] toView: [views objectAtIndex: newIndex] duration: 2.25 options:UIViewAnimationOptionTransitionFlipFromLeft completion: NULL
     ];
    
    index = newIndex;
    
    NSLog(@"self.subviews.count == %u", self.subviews.count);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end