//
//  CustomTextField.h
//  TouchPainter
//
//  Created by Plum on 2018/3/4.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

@interface CustomTextField : UITextField

@property (nonatomic, weak) IBOutlet InputValidator *inputValidator;

- (BOOL)validate;
@end
