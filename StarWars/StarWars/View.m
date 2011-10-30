//
//  View.m
//  StarWars
//
//  Created by Calvin CHOI on 10/30/11.
//  Copyright 2011 Comedy Central. All rights reserved.
//

#import "View.h"


@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
        
        NSString *intro = @"A long time ago\n in a galaxy far, far away...";
        
       // NSString *title = @"Star Wars\n Episode IV\n New Hope";
        
       // NSString *text = @"It is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire. During the battle, Rebel spies managed to steal secret plans to the Empire’s ultimate weapon, the Death Star, an armored space station with enough power to destroy an entire planet. Pursued by the Empire’s sinister agents, Princess Leia races home aboard her starship, custodian of the stolen plans that can save her people and restore freedom to the galaxy…";
        
        CGRect b = self.bounds;
        UIFont *font = [UIFont systemFontOfSize: 32];
        CGSize size = [intro sizeWithFont: font];
        
        CGRect f = CGRectMake(b.size.width, 0, size.width, size.height);
        
        label = [[UILabel alloc] initWithFrame: f];
        label.font = font;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor blueColor];
        label.text = intro;
        [self addSubview: label];
        
        
        
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [UIView animateWithDuration: 5
                          delay: 1
                        options: UIViewAnimationOptionCurveLinear
                     animations: ^{
                         label.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
                         
                     }
                     completion: NULL
     ];
     
}


- (void)dealloc
{
    [super dealloc];
}

@end
