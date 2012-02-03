//
//  WordTableViewController.m
//  EasyThings
//
//  Created by Blue Bitch on 12-2-4.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import "WordTableViewController.h"
#import "CardItem.h"

@implementation WordTableViewController

@synthesize cardItem = _cardItem;

- (void)dealloc {
    [_cardItem release];
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
    // Do any additional setup after loading the view from its nib.
}

- (void)configureRequest:(NSFetchRequest *)request {
    [request setEntity:[NSEntityDescription entityForName:@"WordItem" inManagedObjectContext:self.managedObjectContext]];
    NSPredicate *predicate;
    NSArray *descriptors;
    predicate = [NSPredicate predicateWithFormat:@"SELF IN %@", self.cardItem.contents];
    NSSortDescriptor *sort = [[[NSSortDescriptor alloc] initWithKey:@"star" ascending:YES] autorelease];
    descriptors = [NSArray arrayWithObjects:sort, nil];
    [request setPredicate:predicate];
    [request setSortDescriptors:descriptors]; 
}

- (IBAction)didClickAddButton:(id)sender {
    
}

- (void)setCardItem:(CardItem *)cardItem {
    if(_cardItem != cardItem) {
        [_cardItem release];
        _cardItem = [cardItem retain];
        self.managedObjectContext = _cardItem.managedObjectContext;
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

@end
