//
//  MarkRender.m
//  TouchPainter
//
//  Created by plum on 2018/3/1.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "MarkRender.h"
#import "Dot.h"
#import "Vertex.h"
#import "Stroke.h"

@interface MarkRender() {
    CGContextRef _context;
}

@property (nonatomic, assign) BOOL shouldMoveContextToDot;


@end

@implementation MarkRender

- (instancetype)initWithCGContext:(CGContextRef)context {
    if (self = [super init]) {
        _context = context;
        _shouldMoveContextToDot = YES;
    }
    return self;
}

- (void)visitMark:(id<Mark>)mark {
    
}

- (void)visitDot:(Dot *)dot {
    CGFloat x = dot.localtion.x;
    CGFloat y = dot.localtion.y;
    CGFloat size = dot.size;
    CGRect frame = CGRectMake(x - size/2, y - size/2, size, size);
    CGContextSetFillColorWithColor(_context, dot.color.CGColor);
    CGContextFillEllipseInRect(_context, frame);
}

- (void)visitVertex:(Vertex *)vertex {
    CGFloat x = vertex.localtion.x;
    CGFloat y = vertex.localtion.y;
    if (_shouldMoveContextToDot) {
        CGContextMoveToPoint(_context, x, y);
        _shouldMoveContextToDot = NO;
    } else {
        CGContextAddLineToPoint(_context, x, y);
    }
}

- (void)visitStroke:(Stroke *)stroke {
    CGContextSetFillColorWithColor(_context, stroke.color.CGColor);
    CGContextSetLineWidth(_context, stroke.size);
    CGContextSetLineCap(_context, kCGLineCapRound);
    CGContextStrokePath(_context);
    _shouldMoveContextToDot = YES;
}

@end
