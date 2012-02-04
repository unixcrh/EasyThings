//
//  BaseScrollView.m
//  EasyThings
//
//  Created by 亦恒 陶 on 12-2-4.
//  Copyright (c) 2012年 TJU. All rights reserved.
//

#import "BaseScrollView.h"

@implementation BaseScrollView

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"SV Touch Began");
    
    if (!self.dragging)
        [self.nextResponder touchesBegan: touches withEvent:event];
    else
    {
        NSLog(@"Drag Touch Begin");
        [super touchesBegan: touches withEvent: event];
    }
    
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"SV Touch Moved");
    
    if (!self.dragging)
        [self.nextResponder touchesMoved: touches withEvent:event];
    else
    {
        NSLog(@"Drag Touch Moved");
        [super touchesMoved:touches withEvent:event];
    }
}

- (void) touchesEnded:(NSSet *) touches withEvent: (UIEvent *) event
{    
    NSLog(@"SV Touch End");
    
    if (!self.dragging)
        [self.nextResponder touchesEnded: touches withEvent:event];
    else
    {
        NSLog(@"Drag Touch End");
        [super touchesEnded: touches withEvent: event];
    }
}


@end
