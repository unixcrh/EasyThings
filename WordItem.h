//
//  WordItem.h
//  EasyThings
//
//  Created by Blue Bitch on 12-2-4.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CardItem;

@interface WordItem : NSManagedObject

@property (nonatomic, retain) NSString * category;
@property (nonatomic, retain) NSString * pron;
@property (nonatomic, retain) NSNumber * star;
@property (nonatomic, retain) NSString * tag;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) CardItem *owner;

@end
