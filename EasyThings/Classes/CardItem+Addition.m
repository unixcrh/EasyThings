//
//  CardItem+Addition.m
//  EasyThings
//
//  Created by Blue Bitch on 12-2-4.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import "CardItem+Addition.h"

@implementation CardItem (Addition)

+ (CardItem *)cardAtIndex:(NSInteger)index inManagedObjectContext:(NSManagedObjectContext *)context {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    
    [request setEntity:[NSEntityDescription entityForName:@"CardItem" inManagedObjectContext:context]];
    [request setPredicate:[NSPredicate predicateWithFormat:@"row == %d", index]];
    
    CardItem *res = [[context executeFetchRequest:request error:NULL] lastObject];
    
    [request release];
    
    return res;
}

+ (CardItem *)insertCardAtIndex:(NSInteger)index inManagedObjectContext:(NSManagedObjectContext *)context {
    CardItem *result = [CardItem cardAtIndex:index inManagedObjectContext:context];
    if(result == nil) {
        result = [NSEntityDescription insertNewObjectForEntityForName:@"CardItem" inManagedObjectContext:context];
        result.row = [NSNumber numberWithInteger:index];
        result.name = [NSString stringWithFormat:@"card_%d", index];
    }
    return result;
}


@end
