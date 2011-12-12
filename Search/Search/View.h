//
//  View.h
//  Search
//
//  Created by Calvin CHOI on 12/12/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ViewController;

@interface View: UIView {
	ViewController *viewController;
	UISearchBar *searchBar;
}

- (id) initWithFrame: (CGRect) frame viewController: (ViewController *) c;
@end