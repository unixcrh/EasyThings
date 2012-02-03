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
            WordTableViewController = _WordTableViewController,
            titleLabel = _titleLabel;

- (void)dealloc {
    [_cardItem release];
    [_titleLabel release];
    [_WordTableViewController release];
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.titleLabel = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    WordTableViewController *vc = [[WordTableViewController alloc] init];
    [self.view addSubview:vc.view];
    self.WordTableViewController = vc;
    [vc release];
}

@end
