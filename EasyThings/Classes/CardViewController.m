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

- (void)loadWordTableViewController {
    WordTableViewController *vc = [[WordTableViewController alloc] init];
    self.wordTableViewController = vc;
    self.wordTableViewController.cardItem = self.cardItem;
    [self.view addSubview:vc.view];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)setCardItem:(CardItem *)cardItem {
    if(_cardItem != cardItem) {
        [_cardItem release];
        _cardItem = [cardItem retain];
        self.managedObjectContext = _cardItem.managedObjectContext;
        [self loadWordTableViewController];
    }
}

@end
