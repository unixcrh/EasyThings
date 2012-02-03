//
//  CardViewController.h
//  EasyThings
//
//  Created by Blue Bitch on 12-1-11.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataTableViewController.h"
#import "CardItem.h"

@class WordTableViewController;

@interface CardViewController : CoreDataViewController {
    
}

@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) CardItem *cardItem;
@property (nonatomic, retain) WordTableViewController *WordTableViewController;

@end
