//
//  CustomTextField.m
//  TouchPainter
//
//  Created by Plum on 2018/3/4.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (BOOL)validate {
    NSError *error = nil;
    BOOL validationResult = [_inputValidator validateInput:self error:&error];
    if (!validationResult) {
        NSLog(@"%@,%@", error.localizedDescription, error.localizedFailureReason);
    }
    return validationResult;
}

@end
