//
//  ViewController.m
//  Dec1
//
//  Created by Calvin CHOI on 12/1/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "ViewController.h"
#import "View.h"

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    self.view = [[View alloc] initWithFrame: frame];
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    displayLink = [CADisplayLink displayLinkWithTarget: self.view selector:@selector(move:)
                   ];
    
    // Call move: every time the display is refreshed.
    displayLink.frameInterval = 1;
    
    NSRunLoop *loop = [NSRunLoop currentRunLoop];
    [displayLink addToRunLoop: loop forMode: NSDefaultRunLoopMode];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void) dealloc {
    NSRunLoop *loop = [NSRunLoop currentRunLoop];
    [displayLink removeFromRunLoop: loop forMode: NSDefaultRunLoopMode];
}
@end
