//
//  ToDoThingsItem.h
//  EasyThings
//
//  Created by Blue Bitch on 12-1-11.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ToDoThingsItem : NSManagedObject

@property (nonatomic, retain) NSString * detail;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * tag;
@property (nonatomic, retain) NSNumber * importance;
@property (nonatomic, retain) NSString * category;
@property (nonatomic, retain) NSString * stereotype;
@property (nonatomic, retain) NSDate * remind_date;

@end
