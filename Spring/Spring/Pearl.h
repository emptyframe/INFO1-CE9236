//
//  Pearl.h
//  Spring
//
//  Created by Calvin CHOI on 11/30/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Pearl : UIView
{
    CGPoint location;
    CGPoint velocity;
}

- (id) initWithLocation: (CGPoint) p;
- (void) drag: (CGPoint) p;

@property (nonatomic, assign) IBOutlet CGPoint location;

@end
