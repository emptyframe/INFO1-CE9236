//
//  View.h
//  Progress
//
//  Created by Calvin CHOI on 12/13/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View : UIView
{
    UIProgressView *progressView;
    UILabel *label;
}

- (void) setProgress: (NSTimer *) timer;

@end
