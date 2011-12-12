//
//  ViewController.m
//  Search
//
//  Created by Calvin CHOI on 12/12/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "ViewController.h"
#import "View.h"

@implementation ViewController

/*
 - (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil
 {
 self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */

- (void) didReceiveMemoryWarning
{
	// Releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];
    
	// Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[View alloc] initWithFrame: frame viewController: self];
}


/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 }
 */

- (void) viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
	// Return YES for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

#pragma mark -
#pragma mark Protocol UISearchBarDelegate

- (void) searchBarSearchButtonClicked: (UISearchBar *) searchBar
{
	[searchBar resignFirstResponder];	//dismisss keyboard
    
	NSString *string = [@"http://www.google.com/#q=" stringByAppendingString: searchBar.text];
	NSURL *url = [NSURL URLWithString: string];
	UIApplication *application = [UIApplication sharedApplication];
    
	if (![application canOpenURL: url]) {
		NSLog(@"can't open URL %@.", url);
		return;
	}
    
	if (![application openURL: url]) {
		NSLog(@"did not open open URL %@", url);
	}
}

- (void) searchBar: (UISearchBar *) searchBar
selectedScopeButtonIndexDidChange: (NSInteger) selectedScope
{
	NSLog(@"selectedScopeButtonIndexDidChange: %d %@",
          selectedScope, [searchBar.scopeButtonTitles objectAtIndex: selectedScope]);
}

- (void) searchBarBookmarkButtonClicked: (UISearchBar *) searchBar
{
	NSLog(@"searchBarBookmarkButtonClicked:");
}

- (void) searchBarCancelButtonClicked: (UISearchBar *) searchBar
{
	NSLog(@"searchBarCancelButtonClicked:");
}

- (void) searchBarResultsListButtonClicked: (UISearchBar *) searchBar
{
	NSLog(@"searchBarResultsButtonClicked:");
}

@end