//
//  LittleView.m
//  Touch
//
//  Created by Calvin CHOI on 10/30/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import "LittleView.h"


@implementation LittleView

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
    UIFont *font = [UIFont systemFontOfSize: 20];
    [@"Hello!" drawAtPoint: CGPointZero withFont: font];
}


- (void)dealloc
{
    [super dealloc];
}

@end
