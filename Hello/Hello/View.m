//
//  View.m
//  Hello
//
//  Created by Calvin CHOI on 10/17/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import "View.h"


@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIFont *f = [UIFont systemFontOfSize: 32.0];
    NSString *s = @"Hello, World!";
    CGPoint p = CGPointMake( 100.0, 100.0);
    [s drawAtPoint: p withFont: f];

}

- (void)dealloc
{
    [super dealloc];
}

@end
