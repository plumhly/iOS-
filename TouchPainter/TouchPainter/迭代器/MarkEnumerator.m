//
//  MarkEnumerator.m
//  TouchPainter
//
//  Created by plum on 2018/2/28.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "MarkEnumerator.h"
#import "MarkEnumerator+Private.h"
#import "Mark.h"
#import "NSMutableArray+Stack.h"

@interface MarkEnumerator()

@property (nonatomic, strong) NSMutableArray *stack;

@end

@implementation MarkEnumerator

- (NSArray *)allObjects {
    return [[_stack reverseObjectEnumerator] allObjects];
}

- (id)nextObject {
    return [_stack pop];
}


#pragma mark - Private Method

- (id)initWithMark:(id<Mark>)mark {
    if (self = [super init]) {
        _stack = [NSMutableArray arrayWithCapacity:mark.count];
        [self traverseAndBuildStackWithMark:mark];
    }
    return self;
}

- (void)traverseAndBuildStackWithMark:(id<Mark>)mark {
    if (!mark) {
        [_stack push:mark];
        NSUInteger index = mark.count;
        id <Mark> child;
        while ((child = [mark childMarkAtIndex:index--])) {
            [self traverseAndBuildStackWithMark:child];
        }
    }
}

@end
