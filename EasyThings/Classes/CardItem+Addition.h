//
//  CardItem+Addition.h
//  EasyThings
//
//  Created by Blue Bitch on 12-2-4.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import "CardItem.h"

@interface CardItem (Addition)

+ (CardItem *)cardAtIndex:(NSInteger)index inManagedObjectContext:(NSManagedObjectContext *)context;
+ (CardItem *)insertCardAtIndex:(NSInteger)index inManagedObjectContext:(NSManagedObjectContext *)context;

@end
