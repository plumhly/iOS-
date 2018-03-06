//
//  DrawScribbleCommand.m
//  TouchPainter
//
//  Created by plum on 2018/3/6.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "DrawScribbleCommand.h"
#import "Scribble.h"
#import "CommandKey.h"


@interface DrawScribbleCommand ()
@property (nonatomic, strong) Scribble *scribble;
@property (nonatomic, strong) id<Mark> mark;
@property (nonatomic, assign) BOOL shouldAddToPreviousMark;


@end

@implementation DrawScribbleCommand

- (void)execute {
    if (!self.userinfo) {
        return;
    }
    _scribble = [self.userinfo objectForKey:ScribbleUserInfoKey];
    _mark = [self.userinfo objectForKey:MarkUserInfoKey];
    _shouldAddToPreviousMark = [[self.userinfo objectForKey:ShouldUserInfoKey] boolValue];
    [_scribble addMark:_mark shouldAddToPreviousMark:_shouldAddToPreviousMark];
}

- (void)undo {
    [_scribble removeMark:_mark];
}

@end
