//
//  InputValidator.h
//  TouchPainter
//
//  Created by Plum on 2018/3/4.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern  NSString *const InputValidationErrorDomaim;

@interface InputValidator : NSObject

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end
