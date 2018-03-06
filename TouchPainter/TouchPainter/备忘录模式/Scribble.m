//
//  Scribble.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "Scribble.h"
#import "Stroke.h"
#import "ScribbleMemento+Private.h"


@interface Scribble()

@property (nonatomic, strong) id <Mark> parentMark;
@property (nonatomic, strong) id <Mark> incrementalMark;
@property (nonatomic, strong) id <Mark> mark;

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
        _incrementalMark = aMark;
    }
    [self didChangeValueForKey:@"parentsMark"];
}

- (void)removeMark:(id<Mark>)aMark {
    if (aMark == _parentMark) {
        return;
    }
    [self willChangeValueForKey:@"parentsMark"];
    [_parentMark removeMark:aMark];
    if (_incrementalMark == aMark) {
        _incrementalMark = nil;
    }
    [self didChangeValueForKey:@"parentsMark"];
}


#pragma mark - Memento
- (instancetype)initWithMemento:(ScribbleMemento *)memento {
    if (self = [super init]) {
        if (memento.hasCompleteSnapshot) {
            _mark = memento.mark;
        } else {
            _parentMark = [Stroke new];
            [self attachStateFromMemento:memento];
        }
    }
    return self;
}

- (void)attachStateFromMemento:(ScribbleMemento *)memento {
    [self addMark:memento.mark shouldAddToPreviousMark:NO];
}

- (ScribbleMemento *)scribbleMementoWithCompleteSnapthot:(BOOL)hasCompleteSnapshot {
    if (!_incrementalMark) {
        return nil;
    }
    id <Mark> mementoMark = hasCompleteSnapshot ? _parentMark : _incrementalMark;
    
    ScribbleMemento *memento = [[ScribbleMemento alloc] initWithMark:mementoMark];
    memento.hasCompleteSnapshot = hasCompleteSnapshot;
    return memento;
}

- (ScribbleMemento *)scribbleMemento {
    return [self scribbleMementoWithCompleteSnapthot:YES];
}

+ (instancetype)scribbleWithMement:(ScribbleMemento *)memento {
    Scribble *scribble = [[Scribble alloc] initWithMemento:memento];
    return scribble;
}

@end
