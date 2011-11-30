//
//  View.h
//  ViewController
//
//  Created by Calvin CHOI on 11/30/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface View : UIView
{
    ViewController *viewController;
    UITextView *textView;
}

- (id) initWithFrame:(CGRect) frame controller: (ViewController *) c;

@end
