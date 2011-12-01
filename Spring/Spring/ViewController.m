//
//  ViewController.m
//  Spring
//
//  Created by Calvin CHOI on 11/30/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "ViewController.h"
#import "View.h"

@implementation ViewController

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
	self.view = [[View alloc] initWithFrame: frame];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void) viewDidLoad
{
	[super viewDidLoad];
    
	displayLink = [CADisplayLink displayLinkWithTarget: self.view
                                              selector: @selector(setNeedsDisplay)
                   ];
	
	displayLink.frameInterval = 1;
	
	[displayLink addToRunLoop: [NSRunLoop currentRunLoop]
                      forMode: NSDefaultRunLoopMode
     ];
    
}


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

@end
