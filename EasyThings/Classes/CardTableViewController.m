//
//  CardTableViewController.m
//  PushBox
//
//  Created by Xie Hasky on 11-7-26.
//  Copyright 2011年 同济大学. All rights reserved.
//

#import "CardTableViewController.h"
#import "CardTableViewCell.h"
#import "CardItem+Addition.h"

#define kCardWidth 300

@implementation CardTableViewController

- (void)dealloc
{
    NSLog(@"CardTableViewController dealloc");
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _itemCountPerPage = 3;
    _itemWidth = kCardWidth;
    _itemCount = 4;
    [self initPage];
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    [super configureCell:cell atIndexPath:indexPath];
    if(indexPath.row < _itemCount) {
        CardTableViewCell *cardTableViewCell = (CardTableViewCell *)cell;
        CardViewController *cardViewController = cardTableViewCell.cardViewController;
        cardViewController.managedObjectContext = self.managedObjectContext;
        cardViewController.cardItem = [CardItem insertCardAtIndex:indexPath.row inManagedObjectContext:self.managedObjectContext];
        cardViewController.titleLabel.text = cardViewController.cardItem.name;
    }
}

- (NSString *)customCellClassNameAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row < _itemCount)
        return @"CardTableViewCell";
    else
        return nil;
}

@end
