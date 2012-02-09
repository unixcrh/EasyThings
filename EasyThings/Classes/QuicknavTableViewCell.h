//
//  QuicknavTableViewCell.h
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataViewController.h"


@interface QuicknavTableViewCell : CoreDataViewController {
    UILabel *_nameLable;
    UIImageView *_iconImageView;
    NSInteger _index;
}

@property (nonatomic, retain) IBOutlet UILabel *nameLabel;
@property (nonatomic, retain) IBOutlet UIImageView *iconImageView;
@property (nonatomic) NSInteger index;

- (void)setDefaultImageName:(NSString *)imageName defaultTitleName:(NSString *)titleName;
- (IBAction)touchBegins:(UIButton *)sender;

@end
