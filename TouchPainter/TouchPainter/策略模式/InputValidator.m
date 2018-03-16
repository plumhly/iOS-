//
//  InputValidator.m
//  TouchPainter
//
//  Created by Plum on 2018/3/4.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "InputValidator.h"


 NSString *const InputValidationErrorDomaim = @"InputValidationErrorDomaim";

@implementation InputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
    if (error) {
        *error = nil;
    }
    return NO;
}

@end

