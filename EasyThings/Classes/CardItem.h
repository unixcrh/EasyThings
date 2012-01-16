//
//  CardItem.h
//  EasyThings
//
//  Created by Blue Bitch on 12-1-11.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface CardItem : NSManagedObject

@property (nonatomic, retain) NSNumber * row;
@property (nonatomic, retain) NSNumber * visible;
@property (nonatomic, retain) NSString * name;

@end
