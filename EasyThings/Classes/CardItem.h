//
//  CardItem.h
//  EasyThings
//
//  Created by Blue Bitch on 12-2-4.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class WordItem;

@interface CardItem : NSManagedObject

@property (nonatomic, retain) NSNumber * row;
@property (nonatomic, retain) NSNumber * visible;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *contents;
@end

@interface CardItem (CoreDataGeneratedAccessors)

- (void)addContentsObject:(WordItem *)value;
- (void)removeContentsObject:(WordItem *)value;
- (void)addContents:(NSSet *)values;
- (void)removeContents:(NSSet *)values;
@end
