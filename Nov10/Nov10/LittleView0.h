//
//  LittleView0.h
//  Flip
//
//  Created by Calvin CHOI on 11/28/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TileView;

@interface LittleView0 : UIView {
	NSUInteger n;			//number of rows (same as number of columns)
	NSUInteger emptyRow;	//location of empty position
	NSUInteger emptyCol;
	CGFloat margin;			//width in pixels
	NSArray *_array;				//pointers to the n*n-1 TileViews
}

- (void) place: (TileView *) tileView atRow: (NSUInteger) row col: (NSUInteger) col;

@property (nonatomic, assign) NSUInteger emptyRow;
@property (nonatomic, assign) NSUInteger emptyCol;
@end
