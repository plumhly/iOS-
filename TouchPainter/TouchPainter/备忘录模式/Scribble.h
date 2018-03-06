//
//  Scribble.h
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScribbleMemento.h"
#import "ScribbleMemento.h"

@protocol Mark;

@interface Scribble : NSObject

@property (nonatomic, strong, readonly) id <Mark> parentMark;


//管理mark
- (void)addMark:(id <Mark>)aMark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark;
- (void)removeMark:(id <Mark>)aMark;

//备忘录用的方法
- (instancetype)initWithMemento:(ScribbleMemento *)memento;
+ (instancetype)scribbleWithMement:(ScribbleMemento *)memento;
- (ScribbleMemento *)scribbleMemento;
- (ScribbleMemento *)scribbleMementoWithCompleteSnapthot:(BOOL)hasCompleteSnapshot;
- (void)attachStateFromMemento:(ScribbleMemento *)memento;


@end
