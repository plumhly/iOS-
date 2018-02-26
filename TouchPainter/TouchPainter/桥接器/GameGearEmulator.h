//
//  GameGearEmulator.h
//  TouchPainter
//
//  Created by plum on 2018/2/26.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleEmulator.h"

@interface GameGearEmulator : ConsoleEmulator

- (void)loadInstructionForCommand:(ConsoleCommand)command;
- (void)executeInstructions;

@end
