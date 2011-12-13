//
//  ViewController.m
//  Activity
//
//  Created by Calvin CHOI on 12/13/11.
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
    
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(start:) userInfo:nil repeats:YES];
}

- (void) start: (NSTimer *) timer {
    [timer invalidate];
    [(View *) self.view startAnimating];
    
    [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(stop:) userInfo:nil repeats:NO];
}

- (void) stop: (NSTimer *) timer {
    [timer invalidate];
    [(View *) self.view stopAnimating];
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

@end
