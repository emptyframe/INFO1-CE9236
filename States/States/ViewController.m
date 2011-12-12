//
//  ViewController.m
//  States
//
//  Created by Calvin CHOI on 12/11/11.
//  Copyright (c) 2011 Comedy Central. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (id)initWithStyle: (UITableViewStyle) style
{	
    self = [super initWithStyle: style];
	if (self) {
		// Custom initialization
		states = [NSArray arrayWithObjects:
                  @"Alabama",
                  @"Alaska",
                  @"Arizona",
                  @"Arkansas",
                  @"California",
                  @"Colorado",
                  @"Connecticut",
                  @"Delaware",
                  @"Florida",
                  @"Georgia",
                  @"Hawaii",
                  @"Idaho",
                  @"Illinois",
                  @"Indiana",
                  @"Iowa",
                  @"Kansas",
                  @"Kentucky",
                  @"Louisiana",
                  @"Maine",
                  @"Maryland",
                  @"Massachusetts",
                  @"Michigan",
                  @"Minnesota",
                  @"Mississippi",
                  @"Missouri",
                  @"Montana",
                  @"Nebraska",
                  @"Nevada",
                  @"New Hampshire",
                  @"New Jersey",
                  @"New Mexico",
                  @"New York",
                  @"North Carolina",
                  @"North Dakota",
                  @"Ohio",
                  @"Oklahoma",
                  @"Oregon",
                  @"Pennsylvania",
                  @"Rhode Island",
                  @"South Carolina",
                  @"South Dakota",
                  @"Tennessee",
                  @"Texas",
                  @"Utah",
                  @"Vermont",
                  @"Virginia",
                  @"Washington",
                  @"West Virginia",
                  @"Wisconsin",
                  @"Wyoming",
                  nil
                  ];
        
        // Three default values from class UIScrollView.
        self.tableView.bounces = YES;
        self.tableView.scrollsToTop = YES;
        self.tableView.decelerationRate = UIScrollViewDecelerationRateNormal;
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

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void) viewWillAppear:(BOOL)animated 
{
    [super viewWillAppear: animated];
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear: animated];
}

- (void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void) viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSAssert1(section == 0, @"section number %d must be 0.", section);
    
    // return the number of rows in the section.
    
    return states.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"states";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
    // Configure the cell...
    // The .textLabel and .detailTextLabel properties are UILabels.
    // The .imageView property is a UIImage.
    cell.textLabel.text = [states objectAtIndex: indexPath.row];
    NSString *fileName = [cell.textLabel.text stringByAppendingString: @".jpg"];
    cell.imageView.image = [UIImage imageNamed: fileName]; // nil if .jpg file doesn't exist
    
    cell.detailTextLabel.text = [NSString stringWithFormat: @"%@ is state number %d of %u", cell.textLabel.text, indexPath.row + 1, states.count];
    return cell;
}

#pragma mark - Table view delegate

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath
{
	// Navigation logic may go here. Create and push another view controller.
	/*
     DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName: @"Nib name" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController: detailViewController animated: YES];
     */
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath: indexPath];
    cell.accessoryType = cell.accessoryType == UITableViewCellAccessoryNone ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
}

@end
