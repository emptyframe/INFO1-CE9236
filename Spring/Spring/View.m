//
//  View.m
//  Spring
//
//  Created by Calvin CHOI on 11/30/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "View.h"
#import "Pearl.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
        n = 5;
        a = [[NSMutableArray alloc] initWithCapacity: n];
        
        touchPoint = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height /2);
        
        for (NSUInteger i = 0; i < n; ++i) {
            [a addObject: [[Pearl alloc] initWithLocation: touchPoint]];
        }
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
	for (NSUInteger i = 0; i < a.count; ++i) {
		
		CGPoint p = i == 0 ? touchPoint :
        ((Pearl *)[a objectAtIndex: i - 1]).location;
		
		[[a objectAtIndex: i] drag: p];
	}
}

#pragma mark -
#pragma mark Class UIResponder

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	touchPoint = [[touches anyObject] locationInView: self];
}


- (void) touchesMoved: (NSSet *) touches withEvent: (UIEvent *) event {
	touchPoint = [[touches anyObject] locationInView: self];
}

@end
