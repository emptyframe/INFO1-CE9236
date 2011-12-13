//
//  View.h
//  Activity
//
//  Created by Calvin CHOI on 12/13/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View : UIView 
{
    UIActivityIndicatorView *indicator;
    UILabel *label;
}

// Called by the ViewController:
- (void) startAnimating;
- (void) stopAnimating;

@end
