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
    
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    
    self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGRect b = self.bounds;
    CGFloat radius = .3 * b.size.width; // in pixels
    
    /* Check for the Origin coordinate
    UIFont *f = [UIFont systemFontOfSize: 200];
    [@"Origin" drawAtPoint:CGPointZero withFont:f];
    */
    
    /* Create the inivislbe square that will surround the circle.
     Place the upper left corner of the square at the upper left corner of the View.
     
     */
    
    CGRect r = CGRectMake( -radius, -radius, 2 * radius, 2 * radius);
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(c); // unnecessary here: the path is already empty.
    
    CGContextAddEllipseInRect(c, r);
    
    CGContextTranslateCTM(c, b.size.width / 2, b.size.height / 2);
    
    CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);
    
    CGContextFillPath(c);
    
    
}


- (void)dealloc
{
    [super dealloc];
}

@end
