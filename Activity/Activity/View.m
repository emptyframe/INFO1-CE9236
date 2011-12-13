//
//  View.m
//  Activity
//
//  Created by Calvin CHOI on 12/13/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        CGRect b= self.bounds;
        self.bounds = CGRectMake(-b.size.width / 2, -b.size.height / 2, b.size.width, b.size.height);
        
        indicator = [[UIActivityIndicatorView alloc] initWithFrame: CGRectZero];
        indicator.center = CGPointZero;
        
        indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        indicator.hidesWhenStopped = NO;
        [self addSubview: indicator];
        
        label = [[UILabel alloc] initWithFrame: CGRectZero];
        CGSize size = [@"Stopped" sizeWithFont: label.font];
        
        CGRect f = CGRectMake( 20, -size.height / 2,  size.width, size.height);
    
        label.frame = f;
        [self addSubview: label];
        
    }
    
    
    return self;
}

- (void) startAnimating {
    label.text = @"Started";
    [indicator startAnimating];
    
}

- (void) stopAnimating {
    label.text = @"Stopped";
    [indicator stopAnimating];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
