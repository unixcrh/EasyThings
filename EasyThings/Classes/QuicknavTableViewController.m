//
//  QuicknavTableViewController.m
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import "QuicknavTableViewController.h"
#import "QuicknavTableViewCell.h"

#define kItemWidth 80

@implementation QuicknavTableViewController

@synthesize count = _count;

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
    [quicknavCell setDefaultImageName:imageName defaultTitleName:titleName];
    quicknavCell.nameLabel.text = titleName;
    quicknavCell.view.frame = CGRectMake(self.count*(110+20) + 40, 0, 110, 110);
    self.count = self.count + 1;
    NSLog(@"count:%d",self.count);
    [self.scrollView addSubview:quicknavCell.view];
    [quicknavCell release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _itemCountPerPage = 9;
    _itemWidth = kItemWidth;
    _itemCount = 5;
    
#define WIDTH 1500
    
    self.scrollView.contentSize = CGSizeMake(WIDTH, 110);
    
    //用它指定 ScrollView 中内容的当前位置，即相对于 ScrollView 的左上顶点的偏移
    self.scrollView.contentOffset = CGPointMake(0, 0);
    
    //按页滚动，总是一次一个宽度，或一个高度单位的滚动
    self.scrollView.pagingEnabled = NO;

    [self createBasicViewCellWithImageName:@"icon_cal.png" titleName:@"Calender"];
    [self createBasicViewCellWithImageName:@"icon_today.png" titleName:@"Today"];
    [self createBasicViewCellWithImageName:@"icon_all_cat.png" titleName:@"All Category"];
    [self createBasicViewCellWithImageName:@"icon_search.png" titleName:@"Search"];
    [self createBasicViewCellWithImageName:@"icon_setting.png" titleName:@"Setting"];
    [self initPage];
    
}

- (NSString *)customCellClassNameAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row < _itemCount)
        return @"QuicknavTableViewCell";
    else
        return nil;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    [super configureCell:cell atIndexPath:indexPath];
    QuicknavTableViewCell *quicknavCell = (QuicknavTableViewCell *)cell;
    switch (indexPath.row) {
        case 0:
            quicknavCell.iconImageView.image = [UIImage imageNamed:@"icon_cal.png"];
            quicknavCell.nameLabel.text = @"Calendar";
            break;
        case 1:
            quicknavCell.iconImageView.image = [UIImage imageNamed:@"icon_today.png"];
            quicknavCell.nameLabel.text = @"Today";
            break;
        case 2:
            quicknavCell.iconImageView.image = [UIImage imageNamed:@"icon_all_cat.png"];
            quicknavCell.nameLabel.text = @"All Category";
            break;
        case 3:
            quicknavCell.iconImageView.image = [UIImage imageNamed:@"icon_search.png"];
            quicknavCell.nameLabel.text = @"Search";
            break;
        case 4:
            quicknavCell.iconImageView.image = [UIImage imageNamed:@"icon_setting.png"];
            quicknavCell.nameLabel.text = @"Setting";
            break;
        default:
            break;
    }
}

@end
