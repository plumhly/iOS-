//
//  ConsoleController.h
//  TouchPainter
//
//  Created by plum on 2018/2/26.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConsoleEmulator.h"

@interface ConsoleController : UIViewController

@property (nonatomic, strong) ConsoleEmulator *emulator;


- (void)setCommand:(ConsoleCommand)command;

@end
