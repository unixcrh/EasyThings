//
//  PageViewController.h
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataViewController.h"
#import "BaseScrollView.h"

@interface PageViewController : CoreDataViewController<UIScrollViewDelegate> {    
    NSInteger _itemCountPerPage;
    NSInteger _itemWidth;
    NSInteger _itemHeight;
    NSInteger _itemGap;
    NSInteger _itemCount;
    NSInteger _itemGapRedundance;
    BaseScrollView *_scrollview;
    NSMutableArray *_cellArray;
}

@property(nonatomic, retain) IBOutlet BaseScrollView *scrollView;
@property(nonatomic, retain) NSMutableArray *cellArray;
@property(nonatomic) NSInteger itemCountPerPage;
@property(nonatomic) NSInteger itemWidth;
@property(nonatomic) NSInteger itemGap;
@property(nonatomic) NSInteger itemCount;
@property(nonatomic) NSInteger itemGapRedundance;
@property(nonatomic) NSInteger itemHeight;

- (void)initPage;
- (CGRect)getItemFrameByItemCount:(NSInteger) itemPosition withOffset:(int)offset;
- (CGSize)getScrollViewContentSize;

@end
