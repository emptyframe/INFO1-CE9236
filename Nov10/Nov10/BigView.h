//
//  BigView.h
//  Flip
//
//  Created by Calvin CHOI on 11/28/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigView : UIView {
    // holds the two subvieews we transition between
    NSArray *views;
    
    // inde in views of the currently displayed little view: 0 or 1
    NSUInteger index;
}

@end
