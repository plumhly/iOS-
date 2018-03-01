//
//  MarkEnumerator+Private.h
//  TouchPainter
//
//  Created by plum on 2018/2/28.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "MarkEnumerator.h"

@protocol Mark;

@interface MarkEnumerator ()

- (id)initWithMark:(id <Mark>)mark;
- (void)traverseAndBuildStackWithMark:(id <Mark>)mark;

@end
