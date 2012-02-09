//
//  WordTableViewController.h
//  EasyThings
//
//  Created by Blue Bitch on 12-2-4.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataTableViewController.h"

@class CardItem;

@interface WordTableViewController : CoreDataTableViewController
{
    UILabel *_titleLabel;
    NSInteger _index;
}

@property (nonatomic, retain) CardItem *cardItem;
@property (nonatomic) NSInteger index;
@property (nonatomic, retain) IBOutlet UILabel *titleLabel;


- (IBAction)didClickAddButton:(id)sender;

@end
