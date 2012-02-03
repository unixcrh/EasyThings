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

@property (nonatomic, retain) CardItem *cardItem;

- (IBAction)didClickAddButton:(id)sender;

@end
