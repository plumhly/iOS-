//
//  Scribble.h
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScribbleMemento.h"

@protocol Mark;

@interface Scribble : NSObject

@property (nonatomic, strong, readonly) id <Mark> parentMark;

- (ScribbleMemento *)scribbleMemento;

- (void)addMark:(id <Mark>)aMark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark;
- (void)removeMark:(id <Mark>)aMark;

@end
