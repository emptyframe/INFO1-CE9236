//
//  View.m
//  Search
//
//  Created by Calvin CHOI on 12/12/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "View.h"
#import "ViewController.h"

@implementation View

- (id) initWithFrame: (CGRect) frame viewController: (ViewController *) c
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		viewController = c;
		
		searchBar = [[UISearchBar alloc] initWithFrame: CGRectZero];
		searchBar.barStyle = UIBarStyleDefault;
		searchBar.translucent = NO;
		searchBar.prompt = @"What do you want to search for?";
		searchBar.placeholder = @"Enter it here.";
		searchBar.keyboardType = UIKeyboardTypeDefault;
        
		searchBar.showsBookmarkButton = YES;
		searchBar.showsCancelButton = YES;
		searchBar.showsSearchResultsButton = NO;	//YES hides bookmark
        
		searchBar.showsScopeBar = YES;
		searchBar.scopeButtonTitles = [NSArray arrayWithObjects:
                                       @"US",
                                       @"NYS",
                                       @"NYC",
                                       @"Manhattan",
                                       nil
                                       ];
        
		searchBar.delegate = viewController;
		[searchBar sizeToFit];	//must come after buttons are added
		[self addSubview: searchBar];
	}
	return self;
}
@end