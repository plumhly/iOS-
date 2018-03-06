//
//  Stroke.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "Stroke.h"
#import "MarkEnumerator+Private.h"

@interface Stroke()
@property (nonatomic, strong) NSMutableArray *children;
@end

@implementation Stroke
@dynamic localtion;

- (instancetype)init {
    if (self = [super init]) {
        _children = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

- (void)setLocaltion:(CGPoint)localtion {
    
}

- (CGPoint)localtion {
    if (_children.count > 0) {
        return [_children.firstObject localtion];
    }
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark {
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    } else {
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    if (index >= _children.count) {
        return nil;
    }
    return [_children objectAtIndex:index];
}

- (id<Mark>)lastChild {
    return [_children lastObject];
}

- (NSUInteger)count {
    return _children.count;
}

- (instancetype)copyWithZone:(NSZone *)zone {
    Stroke *strokeCopy = [[[self class] alloc] init];
    strokeCopy.color = [UIColor colorWithCGColor:_color.CGColor];
    strokeCopy.size = _size;
    for (id <Mark> child in _children) {
        id <Mark> item = [child copy];
        [strokeCopy addMark:item];
    }
    return strokeCopy;
}

- (void)drawWithContext:(CGContextRef)context {
    CGPoint location = self.localtion;
    CGContextMoveToPoint(context, location.x, location.y);
    for (id <Mark> mark in _children) {
        [mark drawWithContext:context];
    }
    CGContextSetFillColorWithColor(context, _color.CGColor);
    CGContextStrokePath(context);
}

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor {
    //后序遍历
    for (id <Mark> mark in _children) {
        [mark acceptMarkVisitor:visitor];
    }
    [visitor visitStroke:self];
}

#pragma mark - Enumerator

- (NSEnumerator *)enumerator {
    return [[MarkEnumerator alloc] initWithMark:self];
}


- (void)enumerateMarksUsingBlock:(void (^_Nonnull)(id<Mark>, BOOL *))block {
    BOOL stop = NO;
    NSEnumerator *enumerator = [self enumerator];
    for (id <Mark> item in enumerator) {
        block(item, &stop);
        if (stop) {
            break;
        }
    }
}

#pragma mark - NSCoding

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
}
@end
