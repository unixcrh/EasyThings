//
//  CardTableViewCell.m
//  PushBox
//
//  Created by Xie Hasky on 11-7-26.
//  Copyright 2011年 同济大学. All rights reserved.
//

#import "CardTableViewCell.h"

@implementation CardTableViewCell

@synthesize cardViewController = _cardViewController;
@synthesize index = _index;

- (void)dealloc
{
    [_cardViewController release];
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.cardViewController = nil;
}

- (id)init {
    self = [super init];
    if(self) {
        CardViewController *aCardViewController = [[CardViewController alloc] init];
        aCardViewController.view.frame = CGRectMake(0, 0, self.cardViewController.view.frame.size.width, self.cardViewController.view.frame.size.height);
        self.cardViewController = aCardViewController;
        [aCardViewController release];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.cardViewController.view];
}

- (void)setManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    if(_managedObjectContext != managedObjectContext) {
        [_managedObjectContext release];
        _managedObjectContext = [managedObjectContext retain];
        self.cardViewController.managedObjectContext = _managedObjectContext;
    }
}

@end
