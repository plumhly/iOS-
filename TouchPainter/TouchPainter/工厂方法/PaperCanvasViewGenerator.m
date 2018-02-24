//
//  PaperCanvasViewGenerator.m
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"
#import "PaperCanvasView.h"

@implementation PaperCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aframe {
    return [[PaperCanvasView alloc] initWithFrame:aframe];
}

@end
