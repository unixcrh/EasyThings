//
//  QuicknavTableViewController.m
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import "QuicknavTableViewController.h"
#import "QuicknavTableViewCell.h"

#define kItemWidth 110
#define kItemHeight 100

@implementation QuicknavTableViewController

- (void)dealloc {
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

#pragma mark - View lifecycle

- (void)createBasicViewCellWithImageName:(NSString *)imageName titleName:(NSString *)titleName
{
    //设定 ScrollView 的 Frame，逐页滚动时，如果横向滚动，按宽度为一个单位滚动，纵向时，按高度为一个单位滚动
    //self.scrollView.backgroundColor = [UIColor grayColor]; // ScrollView 背景色，即 View 间的填充色
    
    QuicknavTableViewCell *quicknavCell = [[QuicknavTableViewCell alloc] init];
    quicknavCell.index = self.itemCount++;
    quicknavCell.view.frame = [self getItemFrameByItemCount:quicknavCell.index withOffset:5];
    [self.scrollView addSubview:quicknavCell.view];
    [quicknavCell setDefaultImageName:imageName defaultTitleName:titleName];
    quicknavCell.managedObjectContext = self.managedObjectContext;
    [self.cellArray addObject:quicknavCell];
    [quicknavCell release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.itemCountPerPage = 9;
    self.itemWidth = kItemWidth;
    self.itemHeight = kItemHeight;
    [self initPage];

    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_today.png" titleName:@"Today"];
    [self createBasicViewCellWithImageName:@"icon_all_cat.png" titleName:@"All Category"];
    [self createBasicViewCellWithImageName:@"icon_search.png" titleName:@"Search"];
    [self createBasicViewCellWithImageName:@"icon_setting.png" titleName:@"Setting"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    
    
    //设置scrollview的显示区域
    self.scrollView.contentSize = [self getScrollViewContentSize];
    
}

@end
