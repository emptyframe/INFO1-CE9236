//
//  TileView.m
//  Puzzle
//
//  Created by Calvin CHOI on 11/28/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "TileView.h"
#import "View.h"

@implementation TileView

- (id)initWithView:(View *)v row:(NSUInteger)r col:(NSUInteger)c 
{
    NSString *filename = [NSString stringWithFormat: @"%u%u.png", r, c];
    UIImage *image = [UIImage imageNamed: filename];
    
    if (image == nil) {
        NSLog(@"Couldn't find file %u%u.png", r, c);
        return nil;
    }
    
    self = [super initWithImage: image];
    
    if (self) {
        // Initialization code
        self.userInteractionEnabled = YES; // UIImageView defaults to NO
        view = v;
        row = r;
        col = c;
        [view place: self atRow: row col: col];
    }
    return self;
}


- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	
	//Can this tile move into the empty position?
	//Or is this tile landlocked?
	NSUInteger dRow = abs(row - view.emptyRow);
	NSUInteger dCol = abs(col - view.emptyCol);
    
	if (dRow + dCol == 1) {
        
		//Swap row and view.emptyRow.
		NSUInteger temp = row;
		row = view.emptyRow;
		view.emptyRow = temp;
        
		//Swap col and view.emptyCol.
		temp = col;
		col = view.emptyCol;
		view.emptyCol = temp;
        
		[UIView animateWithDuration: 0.2
                              delay: 0
                            options: UIViewAnimationOptionCurveEaseInOut
                         animations: ^{[view place: self atRow: row col: col];}
                         completion: NULL
         ];
	}
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
