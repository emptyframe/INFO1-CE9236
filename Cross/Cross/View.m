//
//  View.m
//  Cross
//
//  Created by Calvin CHOI on 10/25/11.
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
    
    CGSize size = self.bounds.size;
    CGFloat min = MIN(size.width, size.height);
    CGFloat longSide = min * 15 / 16;
    CGFloat shortSide = longSide / 3;
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextBeginPath(c);
    
    CGContextTranslateCTM(c, size.width / 2, size.height / 2);
    CGContextScaleCTM(c, 1, -1);
    
    CGRect horizontal = CGRectMake(-longSide / 2, -shortSide / 2, longSide, shortSide);
    CGContextAddRect(c, horizontal);
    
    CGContextRotateCTM(c, 90 * M_PI / 180); // 90 degree clockwide
    CGContextAddRect(c, horizontal);
    
    CGContextSetRGBFillColor(c, 1.0, 0.0, 0, 1.0);
    
    CGContextFillPath(c);  
       
    
}


- (void)dealloc
{
    [super dealloc];
}

@end
