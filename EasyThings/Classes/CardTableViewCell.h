//
//  CardTableViewCell.h
//  PushBox
//
//  Created by Xie Hasky on 11-7-26.
//  Copyright 2011年 同济大学. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardViewController.h"

@interface CardTableViewCell : UIViewController {
    CardViewController *_cardViewController;
    NSInteger _index;
}

@property (nonatomic, retain) CardViewController *cardViewController;

@property (nonatomic) NSInteger index;

@end
