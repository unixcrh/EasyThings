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
    CardTableViewCell *cardCell = [[CardTableViewCell alloc] init];
    cardCell.managedObjectContext = self.managedObjectContext;
    cardCell.index = self.itemCount++;
    cardCell.view.frame = [self getItemFrameByItemCount:cardCell.index withOffset:34];
    [self.scrollView addSubview:cardCell.view];
    [self.cellArray addObject:cardCell];
    cardCell.cardViewController.titleLabel.text = titleName;
    
    CardItem *cardItem = [CardItem insertCardAtIndex:cardCell.index inManagedObjectContext:self.managedObjectContext];
    cardCell.cardViewController.cardItem = cardItem;
    
    [cardCell release];
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
