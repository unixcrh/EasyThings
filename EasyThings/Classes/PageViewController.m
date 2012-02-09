//
//  PageViewController.m
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import "PageViewController.h"

@implementation PageViewController

@synthesize scrollView = _scrollview;
@synthesize cellArray = _cellArray;
@synthesize itemCount = _itemCount;
@synthesize itemCountPerPage = _itemCountPerPage;
@synthesize itemGap = _itemGap;
@synthesize itemWidth = _itemWidth;
@synthesize itemGapRedundance = _itemGapRedundance;
@synthesize itemHeight = _itemHeight;

- (void)dealloc 
{
    [self.scrollView release];
    [self.cellArray release];
    [super dealloc];
}

- (NSMutableArray *)subviewArray
{
    if(!_cellArray)
    {
        _cellArray = [[NSMutableArray alloc] init];
    }
    return _cellArray;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.scrollView = nil;
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.scrollView setShowsHorizontalScrollIndicator:NO];
    self.scrollView.pagingEnabled = YES;
	CGRect oldFrame = self.scrollView.frame;
	self.scrollView.frame = oldFrame;
    self.scrollView.delegate = self;
}

- (void)initPage {
    _itemGap = (1024 - _itemCountPerPage * _itemWidth) / (_itemCountPerPage + 1);
    _itemGapRedundance = (1024 - _itemCountPerPage * _itemWidth) % (_itemCountPerPage + 1);
}

- (CGRect)getItemFrameByItemCount:(NSInteger) itemPosition withOffset:(int)offset
{
    int indexOfPage = itemPosition / self.itemCountPerPage;
    int indexOffsetInPage = itemPosition % self.itemCountPerPage;
    CGRect frame = CGRectMake(self.itemWidth * indexOffsetInPage + indexOfPage * 1024 +offset, 0, self.itemWidth, self.itemHeight);
    return frame;
}

- (CGSize)getScrollViewContentSize
{
    return CGSizeMake(1024 * (self.itemCount % self.itemCountPerPage == 0? self.itemCount / self.itemCountPerPage : self.itemCount / self.itemCountPerPage +1), 100);
}


@end
