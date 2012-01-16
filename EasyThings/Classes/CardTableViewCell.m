//
//  CardTableViewCell.m
//  PushBox
//
//  Created by Xie Hasky on 11-7-26.
//  Copyright 2011年 同济大学. All rights reserved.
//

#import "CardTableViewCell.h"

#define CARD_VIEW_CONTROLLER_POS_X  31
#define CARD_VIEW_CONTROLLER_POS_Y  75

@implementation CardTableViewCell

@synthesize cardViewController = _cardViewController;

- (void)dealloc
{
    NSLog(@"CardTableViewCell dealloc");
    [_cardViewController release];
    [super dealloc];
}

- (void)awakeFromNib
{
    //NSLog(@"CardTableViewCell awakeFromNib");
    self.transform = CGAffineTransformRotate(self.transform, M_PI_2);
    
    CardViewController *aCardViewController = [[CardViewController alloc] init];
    aCardViewController.view.frame = CGRectMake(CARD_VIEW_CONTROLLER_POS_X, CARD_VIEW_CONTROLLER_POS_Y, self.cardViewController.view.frame.size.width, self.cardViewController.view.frame.size.height);
    self.cardViewController = aCardViewController;
    [aCardViewController release];
    [self addSubview:self.cardViewController.view];
}


@end
