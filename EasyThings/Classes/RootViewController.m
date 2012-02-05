//
//  RootViewController.m
//  EasyThings
//
//  Created by Blue Bitch on 11-9-23.
//  Copyright 2011年 TJU. All rights reserved.
//

#import "RootViewController.h"
#import "CardTableViewController.h"
#import "QuicknavTableViewController.h"

@implementation RootViewController

@synthesize cardTableViewController = _cardTableViewController;
@synthesize quicknavTableViewController = _quicknavTableViewController;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
    [_cardTableViewController release];
    [_quicknavTableViewController release];
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Set up the edit and add buttons.
    self.cardTableViewController.managedObjectContext = self.managedObjectContext;
    self.quicknavTableViewController.managedObjectContext = self.managedObjectContext;
    self.cardTableViewController.view.frame = CGRectMake(0, -39, 1024, 700);
    [self.view addSubview:_cardTableViewController.view];
    self.quicknavTableViewController.view.frame = CGRectMake(0, 620, 1024, 200);
    [self.view addSubview:_quicknavTableViewController.view];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return interfaceOrientation == UIDeviceOrientationLandscapeRight || interfaceOrientation == UIDeviceOrientationLandscapeLeft;
}

@end
