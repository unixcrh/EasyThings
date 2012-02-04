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
@synthesize subviewArray = _subviewArray;
@synthesize itemCount = _itemCount;
@synthesize itemCountPerPage = _itemCountPerPage;
@synthesize itemGap = _itemGap;
@synthesize itemWidth = _itemWidth;
@synthesize itemGapRedundance = _itemGapRedundance;
@synthesize itemHeight = _itemHeight;

- (void)dealloc 
{
    [self.scrollView release];
    [self.subviewArray release];
    [super dealloc];
}

- (NSMutableArray *)subviewArray
{
    if(!_subviewArray)
    {
        _subviewArray = [[NSMutableArray alloc] init];
    }
    return _subviewArray;
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
    self.scrollView.pagingEnabled = NO;
	CGRect oldFrame = self.scrollView.frame;
    //self.scrollView.transform = CGAffineTransformMakeRotation(-M_PI_2);
	self.scrollView.frame = oldFrame;
    //self.scrollView.contentSize = CGSizeMake(1024, 800);
    self.scrollView.delegate = self;
    //self.tableView.delegate = self;
    //self.tableView.dataSource = self;
}

- (void)initPage {
    _itemGap = (1024 - _itemCountPerPage * _itemWidth) / (_itemCountPerPage + 1);
    _itemGapRedundance = (1024 - _itemCountPerPage * _itemWidth) % (_itemCountPerPage + 1);
}

- (CGRect)getItemFrameByItemCount:(NSInteger) itemPosition
{
    NSLog(@"position:%d,width:%d",itemPosition,self.itemWidth);
    int offset1 = self.itemWidth/2.2;
    int offset2 = self.itemHeight/12;
    CGRect frame = CGRectMake(itemPosition*(self.itemWidth + self.itemGap*2)+offset1, 0+offset2, self.itemWidth, self.itemHeight);
    return frame;
}

- (CGSize)getContentSize
{
    return CGSizeMake((self.itemWidth + self.itemGap*2) * self.itemCount + self.itemWidth , self.itemHeight);
}


@end
