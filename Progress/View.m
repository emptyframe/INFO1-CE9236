//
//  View.m
//  Progress
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
        self.backgroundColor = [UIColor whiteColor];
        
        CGRect b = self.bounds;
        
        // Put origin of View at center of view
        self.bounds = CGRectMake(-b.size.width / 2, -b.size.height/2, b.size.width, b.size.height);
        
        // Size of the UIProgressView. Must be at least 10 pixels high.
        CGSize size = CGSizeMake(b.size.width * 3 / 4, 10);
        
        frame = CGRectMake(-size.width / 2, -size.height / 2, size.width, size.height);
        
        progressView = [[UIProgressView alloc] initWithFrame: frame];
        progressView.progressViewStyle = UIProgressViewStyleDefault;
        progressView.progress = 0;
        [self addSubview: progressView];
        
        // Put the UILabel above the UIProgressView.
        label = [[UILabel alloc] initWithFrame: CGRectZero];
        label.text = @"0.0/1.0";
        size = [label.text sizeWithFont: label.font];
        
        label.frame = CGRectMake( -size.width / 2, -progressView.frame.size.height / 2 - size.height - 1, size.width, size.height);
        
        [self addSubview: label];
    }
    return self;
}

- (void) setProgress:(NSTimer *)timer {
    progressView.progress += 0.01; 
    label.text = [NSString stringWithFormat: @"%.1f/%.1f", progressView.progress, 1.0];
    
    if (progressView.progress >= 1)
    {
        [timer invalidate];
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

@end
