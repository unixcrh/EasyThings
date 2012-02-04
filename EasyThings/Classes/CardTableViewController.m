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
#define kCardHeight 650;

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

- (void)createBasicViewCellWithTitleName:(NSString *)titleName
{
    //设定 ScrollView 的 Frame，逐页滚动时，如果横向滚动，按宽度为一个单位滚动，纵向时，按高度为一个单位滚动
    //self.scrollView.backgroundColor = [UIColor grayColor]; // ScrollView 背景色，即 View 间的填充色
    
    CardTableViewCell *cardCell = [[CardTableViewCell alloc] init];
    cardCell.cardViewController.titleLabel.text = titleName;
    
    cardCell.index = self.itemCount++;
    cardCell.view.frame = [self getItemFrameByItemCount:cardCell.index];
    //NSLog(@"count:%d",self.count);
    [self.scrollView addSubview:cardCell.view];
    [self.subviewArray addObject:cardCell];
    [cardCell release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _itemCountPerPage = 3;
    _itemWidth = kCardWidth;
    _itemHeight = kCardHeight;
    _itemCount = 0;
    
    //用它指定 ScrollView 中内容的当前位置，即相对于 ScrollView 的左上顶点的偏移
    self.scrollView.contentOffset = CGPointMake(0, 0);
        
    [self createBasicViewCellWithTitleName:@"title"];
    [self createBasicViewCellWithTitleName:@"title2"];
    [self createBasicViewCellWithTitleName:@"title3"];
    [self createBasicViewCellWithTitleName:@"title4"];




    self.scrollView.contentSize = [self getContentSize];
    [self initPage];
}


@end
