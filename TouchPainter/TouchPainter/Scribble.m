//
//  Scribble.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "Scribble.h"
#import "Stroke.h"


@interface Scribble()

@property (nonatomic, strong) id <Mark> parentMark;

@end

@implementation Scribble

- (instancetype)init {
    if (self = [super init]) {
        _parentMark = [[Stroke alloc] init];
    }
    return self;
}

- (void)addMark:(id<Mark>)aMark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark {
    [self willChangeValueForKey:@"parentsMark"];
    
    if (shouldAddToPreviousMark) {
        [[_parentMark lastChild] addMark:aMark];
    } else {
        [_parentMark addMark:aMark];
    }
    [self didChangeValueForKey:@"parentsMark"];
}

- (void)removeMark:(id<Mark>)aMark {
    if (aMark == _parentMark) {
        return;
    }
    [self willChangeValueForKey:@"parentsMark"];
    [_parentMark removeMark:aMark];
    [self didChangeValueForKey:@"parentsMark"];
}

@end
