//
//  Stroke.h
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Stroke : NSObject <Mark>

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint localtion;
@property (nonatomic, assign, readonly) NSUInteger count;
@property (nonatomic, strong, readonly) id <Mark> lastChild;

- (void)addMark:(id <Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (id <Mark>)childMarkAtIndex:(NSUInteger)index;
- (NSEnumerator *)enumerator;
- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor;

-(void)enumerateMarksUsingBlock:(void (^)(id<Mark>, BOOL *))block;
- (instancetype)copyWithZone:(NSZone *)zone;

@end
