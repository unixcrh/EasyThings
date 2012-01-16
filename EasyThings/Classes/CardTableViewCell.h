//
//  CardTableViewCell.h
//  PushBox
//
//  Created by Xie Hasky on 11-7-26.
//  Copyright 2011年 同济大学. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardViewController.h"

@interface CardTableViewCell : UITableViewCell {
    CardViewController *_cardViewController;
}

@property (nonatomic, retain) CardViewController *cardViewController;

@end
