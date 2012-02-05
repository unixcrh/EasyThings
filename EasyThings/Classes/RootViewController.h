//
//  RootViewController.h
//  EasyThings
//
//  Created by Blue Bitch on 11-9-23.
//  Copyright 2011年 TJU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataViewController.h"

@class CardTableViewController;
@class QuicknavTableViewController;
@interface RootViewController : CoreDataViewController {
    CardTableViewController *_cardTableViewController;
    QuicknavTableViewController *_quicknavTableViewController;
}

@property (retain, nonatomic) CardTableViewController *cardTableViewController;
@property (retain, nonatomic) QuicknavTableViewController *quicknavTableViewController;

@end
