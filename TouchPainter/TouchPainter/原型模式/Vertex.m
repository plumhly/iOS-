//
//  Vertex.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

- (instancetype)initWithLocaltion:(CGPoint)localtion {
    if (self = [super init]) {
        self.localtion = localtion;
    }
    return self;
}

- (instancetype)copyWithZone:(NSZone *)zone {
    Vertex *vertexCopy = [[[self class] allocWithZone:zone]  initWithLocaltion:_localtion];
    return vertexCopy;
}

- (void)addMark:(id <Mark>)mark {
    
}

- (void)removeMark:(id <Mark>)mark {
    
}

- (id <Mark>)childMarkAtIndex:(NSUInteger)index {
    return nil;
}

- (void)drawWithContext:(CGContextRef)context {
    CGContextAddLineToPoint(context, _localtion.x, _localtion.y);
}

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor {
    [visitor visitVertex:self];
}

@end
