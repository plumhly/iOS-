
//
//  ScribbleMemento+Private.h
//  TouchPainter
//
//  Created by plum on 2018/3/6.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "ScribbleMemento.h"
#import "Mark.h"

@interface ScribbleMemento ()

@property (nonatomic, assign) BOOL hasCompleteSnapshot;
@property (nonatomic, copy) id <Mark> mark;

- (instancetype)initWithMark:(id <Mark>)aMark;

@end
