//
//  Mark.h
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MarkVisitor.h"

@protocol Mark <NSObject>

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint localtion;
@property (nonatomic, assign, readonly) NSUInteger count;
@property (nonatomic, strong, readonly) id <Mark> lastChild;

- (id)copy;
- (void)addMark:(id <Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (id <Mark>)childMarkAtIndex:(NSUInteger)index;
- (NSEnumerator *)enumerator;
- (void)enumerateMarksUsingBlock:(void(^)(id<Mark> item, BOOL *stop))block;

- (void)drawWithContext:(CGContextRef)context;

//访问者
- (void)acceptMarkVisitor:(id <MarkVisitor>)visitor;

@end
