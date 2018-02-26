//
//  TouchConsoleController.m
//  TouchPainter
//
//  Created by plum on 2018/2/26.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "TouchConsoleController.h"

@interface TouchConsoleController ()

@end

@implementation TouchConsoleController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)up {
    [super setCommand:ConsoleCommandUp];
}

- (void)down {
    [super setCommand:ConsoleCommandDown];
}

- (void)left {
    [super setCommand:ConsoleCommandLeft];
}

- (void)right {
    [super setCommand:ConsoleCommandRight];
}

- (void)select {
    [super setCommand:ConsoleCommandSelect];
}

- (void)start {
    [super setCommand:ConsoleCommandStart];
}

- (void)action1 {
    [super setCommand:ConsoleCommandAction1];
}
- (void)action2 {
    [super setCommand:ConsoleCommandAction2];
}

@end
