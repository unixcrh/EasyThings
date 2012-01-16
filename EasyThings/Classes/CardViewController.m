//
//  CardViewController.m
//  EasyThings
//
//  Created by Blue Bitch on 12-1-11.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import "CardViewController.h"

@implementation CardViewController

- (void)dealloc {
    [_tableView release];
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.tableView = nil;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)configureRequest:(NSFetchRequest *)request {
    [request setEntity:[NSEntityDescription entityForName:@"ToDoThingsItem" inManagedObjectContext:self.managedObjectContext]];
    //NSPredicate *predicate;
    //predicate = [NSPredicate predicateWithFormat:@"SELF IN %@", self.renrenUser.friends];
    //[request setPredicate:predicate];
    NSSortDescriptor *sort;
    sort = [[NSSortDescriptor alloc] initWithKey:@"importance" ascending:YES];
    NSArray *descriptors = [NSArray arrayWithObject:sort]; 
    [request setSortDescriptors:descriptors]; 
    [sort release];
}

@end
