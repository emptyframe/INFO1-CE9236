//
//  View.m
//  Japan
//
//  Created by Calvin CHOI on 10/24/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import "View.h"


@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGRect b = self.bounds;
    CGFloat radius = .3 * b.size.width; // in pixels
    
    /* Create the inivislbe square that will surround the circle.
     Place the upper left corner of the square at the upper left corner of the View.
     
     */
    
    CGRect r = CGRectMake(b.origin.x + b.size.width / 2 - radius, b.origin.y + b.size.height / 2 - radius, 2 * radius, 2 * radius);
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(c); // unnecessary here: the path is already empty.
    
    CGContextAddEllipseInRect(c, r);
    
    CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);
    
    CGContextFillPath(c);
}


- (void)dealloc
{
    [super dealloc];
}

@end
