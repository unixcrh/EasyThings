//
//  CardViewController.m
//  EasyThings
//
//  Created by Blue Bitch on 12-1-11.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import "CardViewController.h"
#import "WordTableViewController.h"

@implementation CardViewController

@synthesize cardItem = _cardItem,
            wordTableViewController = _wordTableViewController,
            titleLabel = _titleLabel;

- (void)dealloc {
    [_cardItem release];
    [_titleLabel release];
    [_wordTableViewController release];
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.titleLabel = nil;
}

- (id)init {
    self = [super init];
    if(self) {
        WordTableViewController *vc = [[[WordTableViewController alloc] init] autorelease];
        self.wordTableViewController = vc;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%d",self.wordTableViewController.managedObjectContext != nil);
    self.wordTableViewController.view.frame = self.view.frame;
    [self.view addSubview:self.wordTableViewController.view];
    // Do any additional setup after loading the view from its nib.
}

- (void)setCardItem:(CardItem *)cardItem {
    if(_cardItem != cardItem) {
        [_cardItem release];
        _cardItem = [cardItem retain];
        self.managedObjectContext = _cardItem.managedObjectContext;
        self.wordTableViewController.cardItem = cardItem;
    }
}

- (void)setManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    if(_managedObjectContext != managedObjectContext) {
        [_managedObjectContext release];
        _managedObjectContext = [managedObjectContext retain];
        self.wordTableViewController.managedObjectContext = _managedObjectContext;
    }
}

@end
