//
//  CanvasView.h
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mark.h"
@interface CanvasView : UIView

@property (nonatomic, strong) id <Mark> mark;

@end
