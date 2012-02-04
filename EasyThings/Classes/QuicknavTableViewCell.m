//
//  QuicknavTableViewCell.m
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import "QuicknavTableViewCell.h"

@implementation QuicknavTableViewCell

@synthesize nameLabel = _nameLable;
@synthesize iconImageView = _iconImageView;
@synthesize titleStr;
@synthesize index = _index;

- (void)dealloc
{
    //NSLog(@"QuicknavTableViewCell dealloc");
    [_nameLable release];
    [_iconImageView release];
    [titleStr release];
    [super dealloc];
}

- (void)awakeFromNib
{
    self.nameLabel.font = [UIFont fontWithName:@"MV Boli" size:18.0f];
}

- (void)viewDidLoad
{
    [self.nameLabel setText: titleStr];
    [super viewDidLoad];
}

- (void)setDefaultImageName:(NSString *)imageName defaultTitleName:(NSString *)titleName
{
    self.view.backgroundColor = [UIColor clearColor];
    self.iconImageView.image = [UIImage imageNamed:imageName];
    self.nameLabel.font = [UIFont fontWithName:@"MV Boli" size:18.0f];
    self.titleStr = titleName;
}

- (IBAction)touchBegins:(UIButton *)sender
{
    NSLog(@"%d",self.index);
}

@end
