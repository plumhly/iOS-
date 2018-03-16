//
//  StrategyViewController.h
//  TouchPainter
//
//  Created by Plum on 2018/3/4.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NumericInputValidator.h"
#import "AlphaInputValidator.h"
#import "CustomTextField.h"

@interface StrategyViewController : UIViewController


@property (nonatomic, weak) IBOutlet CustomTextField *numericTextfield;
@property (nonatomic, weak) IBOutlet CustomTextField *alphaTextfield;

@end

