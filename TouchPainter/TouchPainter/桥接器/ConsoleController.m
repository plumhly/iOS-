//
//  ConsoleController.m
//  TouchPainter
//
//  Created by plum on 2018/2/26.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "ConsoleController.h"

@interface ConsoleController ()

@end

@implementation ConsoleController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setCommand:(ConsoleCommand)command {
    [_emulator loadInstructionForCommand:command];
    [_emulator executeInstructions];
}

@end
