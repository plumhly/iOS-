//
//  CommandSlider.h
//  TouchPainter
//
//  Created by plum on 2018/2/26.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Command.h"

@interface CommandSlider : UISlider

@property (nonatomic, weak) IBOutlet Command *command;

@end
