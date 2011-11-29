//
//  View.h
//  Puzzle
//
//  Created by Calvin CHOI on 11/28/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TileView;

@interface View : UIView {
    NSUInteger n;
    NSUInteger emptyRow;
    NSUInteger emptyCol;
    CGFloat margin;
    NSArray *array;
}

- (void) place: (TileView *) tileView atRow: (NSUInteger) row col: (NSUInteger) col;

@property (nonatomic, assign) NSUInteger emptyRow;
@property (nonatomic, assign) NSUInteger emptyCol;

@end
