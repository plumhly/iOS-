//
//  NSMutableArray+Stack.m
//  TouchPainter
//
//  Created by plum on 2018/3/1.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "NSMutableArray+Stack.h"

@implementation NSMutableArray (Stack)


- (void)push:(id)object {
    if (object) {
        [self addObject:object];
    }
}

- (id)pop {
    id object = self.lastObject;
    [self removeLastObject];
    return object;
}

@end
