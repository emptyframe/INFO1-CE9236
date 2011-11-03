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

        CGFloat w = 110;
        CGFloat h = 22;
        CGRect b = self.bounds;
        
        mineLocation = CGRectMake( 100, 100, 300, 300);
        
        CGRect f = CGRectMake(b.origin.x + (b.size.width - w) / 2 , b.origin.y + (b.size.height - h) / 2, w, h);
        littleView = [[LittleView alloc] initWithFrame: f];
        [self addSubview: littleView];
    }
    return self;
}

/* 
 - (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (touches.count > 0) {
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView: self];
        littleView.center = point; // Move the littleView to a new location
        
        // Can combine the above three statements to
        //littleView.center = [[touches anyObject] locationInView: self];
    }
}
 
 */

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    
    littleView.backgroundColor = [UIColor yellowColor];
    
    if (touches.count > 0) {
        [UIView animateWithDuration: 1.0 
                              delay: 0.0
                            options: UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionBeginFromCurrentState
                         animations: ^{
                             littleView.center = [[touches anyObject] locationInView: self];
                             
                         }
                         completion: NULL
         ];
    }
}
         /*
- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    littleView.center = [[touches anyObject] locationInView: self];
}
*/
  

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {

    if (CGRectContainsPoint(mineLocation, littleView.center)) {
        littleView.backgroundColor = [UIColor redColor];
    } else {
        littleView.backgroundColor = [UIColor greenColor];
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
