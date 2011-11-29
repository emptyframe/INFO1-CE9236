//
//  TileView.h
//  Puzzle
//
//  Created by Calvin CHOI on 11/28/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface TileView : UIImageView {
    View *view;
    NSUInteger row;
    NSUInteger col;
}

- (id) initWithView: (View *) v row: (NSUInteger) r col: (NSUInteger) c;

@end
