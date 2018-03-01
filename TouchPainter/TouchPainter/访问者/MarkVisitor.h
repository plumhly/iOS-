//
//  MarkVisitor.h
//  TouchPainter
//
//  Created by plum on 2018/3/1.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Mark;
@class Dot, Stroke, Vertex;

@protocol MarkVisitor <NSObject>


- (void)visitMark:(id <Mark>)mark;
- (void)visitDot:(Dot *)dot;
- (void)visitVertex:(Vertex *)vertex;
- (void)visitStroke:(Stroke *)stroke;


@end
