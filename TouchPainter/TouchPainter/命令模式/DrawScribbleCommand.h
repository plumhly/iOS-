//
//  DrawScribbleCommand.h
//  TouchPainter
//
//  Created by plum on 2018/3/6.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "Command.h"

@interface DrawScribbleCommand : Command

- (void)execute;
- (void)undo;

@end
