//
//  View.h
//  TabBar
//
//  Created by Calvin CHOI on 12/5/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface View : UITextView {
    ViewController *viewController;
}

- (id) initWithFrame:(CGRect)frame controller: (ViewController *) c;

@end
