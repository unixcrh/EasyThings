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
#import "WordTableViewController.h"

#define kCardWidth 330
#define kCardHeight 650

@implementation CardTableViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)createBasicViewCellWithTitleName:(NSString *)titleName
{
    WordTableViewController *wordCell = [[WordTableViewController alloc] init];
    wordCell.index = self.itemCount++;
    wordCell.view.frame = [self getItemFrameByItemCount:wordCell.index withOffset:34];
    [self.scrollView addSubview:wordCell.view];
    [self.cellArray addObject:wordCell];
    wordCell.titleLabel.text = titleName;
    
    CardItem *cardItem = [CardItem insertCardAtIndex:wordCell.index inManagedObjectContext:self.managedObjectContext];
    wordCell.cardItem = cardItem;
    
    [wordCell release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _itemCountPerPage = 3;
    _itemWidth = kCardWidth;
    _itemHeight = kCardHeight;
        
    [self createBasicViewCellWithTitleName:@"Yesterday"];
    [self createBasicViewCellWithTitleName:@"Today"];
    [self createBasicViewCellWithTitleName:@"Tomorrow"];
    [self createBasicViewCellWithTitleName:@"The day after tomorrow"];
    [self createBasicViewCellWithTitleName:@"The day after tomorrow"];
    [self createBasicViewCellWithTitleName:@"The day after tomorrow"];
    [self createBasicViewCellWithTitleName:@"The day after tomorrow"];
    [self createBasicViewCellWithTitleName:@"The day after tomorrow"];
    
    self.scrollView.contentSize = [self getScrollViewContentSize];
    [self initPage];
}


@end
