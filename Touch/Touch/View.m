//
//  View.m
//  Touch
//
//  Created by Calvin CHOI on 10/30/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import "View.h"
#import "LittleView.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        
        CGRect f = CGRectMake(0, 0, 80, 40);
        littleView = [[LittleView alloc] initWithFrame: f];
        [self addSubview: littleView];
    }
    return self;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (touches.count > 0) {
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView: self];
        littleView.center = point; // Move the littleView to a new location
        
        // Can combine the above three statements to
        //littleView.center = [[touches anyObject] locationInView: self];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc
{
    [super dealloc];
}

@end
