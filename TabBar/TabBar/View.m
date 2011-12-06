//
//  View.m
//  TabBar
//
//  Created by Calvin CHOI on 12/5/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "View.h"
#import "ViewController.h"

@implementation View

- (id) initWithFrame: (CGRect) frame controller:(ViewController *)c
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        self.editable = NO; // Don't pop up a keyboard.
        self.font = [UIFont fontWithName: @"Courier" size: 14];
        viewController = c;
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    self.text = [viewController.text stringByAppendingString: @"\n"];
    
    for (UIView *v = self; v != nil; v = v.superview) {
        self.text = [self.text stringByAppendingFormat:
                     @"%@\n"
                     @"frame (%g, %2g), %g x %g\n"
                     @"bounds (%g, %2g), %g x %g\n",
                     NSStringFromClass(v.class),
                     v.frame.origin.x, v.frame.origin.y, v.frame.size.width, v.frame.size.height,
                     v.bounds.origin.x, v.bounds.origin.y, v.bounds.size.width, v.frame.size.height
                     ];
        
    }
    
    CGAffineTransform ctm = CGContextGetCTM(UIGraphicsGetCurrentContext());
    
    self.text = [self.text stringByAppendingFormat:
                 @"\nCTM %5g%5g%5g\n"
                 @"    %5g%5g%5g\n"
                 @"    %5g%5g%5g",
                 ctm.a,  ctm.b,  0.0,
                 ctm.c,  ctm.d,  0.0,
                 ctm.tx, ctm.ty, 1.0

                 ];
    
}


@end
