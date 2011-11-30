//
//  View.m
//  ViewController
//
//  Created by Calvin CHOI on 11/30/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "View.h"
#import "ViewController.h"

@implementation View

- (id) initWithFrame: (CGRect) frame controller: (ViewController *) c {
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		viewController = c;
        
		textView = [[UITextView alloc] initWithFrame: self.bounds];
		textView.editable = NO;
		textView.font = [UIFont fontWithName: @"Courier" size: 15];
		[self addSubview: textView];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
	NSArray *a = [NSArray arrayWithObjects:
                  @"Unknown",
                  @"Portrait",
                  @"PortraitUpsideDown",	//home button at bottom
                  @"LandscapeRight",		//home button on right
                  @"LandscapeLeft",		//home button on left
                  nil
                  ];
    
	CGRect f = self.frame;
	CGRect b = self.bounds;
	CGRect F = self.superview.frame;
	CGRect B = self.superview.bounds;
    
	CGContextRef c = UIGraphicsGetCurrentContext();
	CGAffineTransform ctm = CGContextGetCTM(c);
    
	textView.text = [NSString stringWithFormat:
                     @"%@\n\n"
                     
                     @"      self.frame (%2g,%2g), %g×%g\n"
                     @"     self.bounds (%2g,%2g), %g×%g\n"
                     @" superview.frame (%2g,%2g), %g×%g\n"
                     @"superview.bounds (%2g,%2g), %g×%g\n\n"
                     
                     @"CTM\n"
                     @"%5g%5g%5g\n"
                     @"%5g%5g%5g\n"
                     @"%5g%5g%5g",
                     
                     [a objectAtIndex: viewController.interfaceOrientation],
                     
                     f.origin.x, f.origin.y, f.size.width, f.size.height,
                     b.origin.x, b.origin.y, b.size.width, b.size.height,
                     F.origin.x, F.origin.y, F.size.width, F.size.height,
                     B.origin.x, B.origin.y, B.size.width, B.size.height,
                     
                     ctm.a,  ctm.b,  0.0,
                     ctm.c,  ctm.d,  0.0,
                     ctm.tx, ctm.ty, 1.0
                     ];
}


@end
