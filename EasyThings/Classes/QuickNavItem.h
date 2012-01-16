//
//  QuickNavItem.h
//  EasyThings
//
//  Created by Blue Bitch on 12-1-11.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface QuickNavItem : NSManagedObject

@property (nonatomic, retain) NSNumber * removable;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * icon;
@property (nonatomic, retain) NSNumber * highlight;
@property (nonatomic, retain) NSNumber * row;

@end
