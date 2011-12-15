//
//  ViewController.m
//  Dec15
//
//  Created by Calvin CHOI on 12/14/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil
{
	self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
	if (self) {
		// Custom initialization
	}
	return self;
}

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
	UITextView *textView = [[UITextView alloc] initWithFrame: frame];
	textView.backgroundColor = [UIColor whiteColor];
	textView.textColor = [UIColor blackColor];
	textView.font = [UIFont systemFontOfSize: 20];
	textView.keyboardType = UIKeyboardTypeDefault;
	textView.returnKeyType = UIReturnKeyDefault;
    
	textView.autocapitalizationType = UITextAutocapitalizationTypeSentences;
	textView.editable = YES;	//the default
	textView.delegate = self;
      
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"lyrics" ofType:@"txt"];
    
    if (filePath) {  
        NSString *myText = [NSString stringWithContentsOfFile:filePath];  
        if (myText) {  
            textView.text= myText;  
        }  
    }  
        
	self.view = textView;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void) viewDidLoad
{
	[super viewDidLoad];
    
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle: @"Done"
                                                                              style: UIBarButtonItemStyleDone
                                                                             target: self
                                                                             action: @selector(done)
                                              ];
}

- (void) done
{
	if ([self.view isFirstResponder]) { //if the keyboard is up
		[self textViewShouldEndEditing: (UITextView *)self.view]; //dismiss the keyboard
	} else {
		[self textViewDidEndEditing: (UITextView *)self.view];
	}
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


#pragma mark -
#pragma mark Protocol UITextViewDelegate

- (BOOL) textViewShouldEndEditing: (UITextView *) textView
{
	NSLog(@"textViewShouldEndEditing: length == %d", textView.text.length);
	if ([textView hasText]) {
		[self.view resignFirstResponder]; //Hide the keyboard.
		return YES;                       //Call textFieldDidEndEditing:
	}
    
	return NO;
}

- (void) textViewDidEndEditing: (UITextView *) textView
{
	NSString *dirName = NSHomeDirectory();
	NSString *fileName = @"lyrics.txt";
	NSString *pathName = [dirName stringByAppendingPathComponent: fileName];
	NSError *error = nil;
    
	BOOL success = [textView.text writeToFile: pathName
                                   atomically: YES
                                     encoding: NSUTF8StringEncoding
                                        error: &error
                    ];
    
	if (success) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"File Saved!"
                                                        message: nil
                                                       delegate: nil	//the ViewController
                                              cancelButtonTitle: @"Close"
                                              otherButtonTitles: nil
                              ];
        [alert show];

	} else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Save Failed!"
                                                        message: error.description
                                                       delegate: nil	//the ViewController
                                              cancelButtonTitle: @"Close"
                                              otherButtonTitles: nil
                              ];
        [alert show]; 
	}
    
}

- (void) dismissModalViewController {
	[self dismissModalViewControllerAnimated: YES];
}

@end