//
//  SetStrokeColorCommand.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "SetStrokeColorCommand.h"
#import "CoordinatingViewController.h"
#import "CanvasViewController.h"

@implementation SetStrokeColorCommand


-(void)execute {
    CGFloat redValue = 0.0;
    CGFloat greenValue = 0.0;
    CGFloat blueValue = 0.0;
    
    if ([self.delegate respondsToSelector:@selector(command:didRequestColorComponentsForRed:green:blue:)]) {
        [_delegate command:self didRequestColorComponentsForRed:&redValue green:&greenValue blue:&blueValue];
    }
    
    UIColor *color = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    
    CoordinatingViewController *coodinator = [CoordinatingViewController sharedInstance];
    CanvasViewController *controller = [coodinator canvasViewController];
    [controller setStrokeColor:color];
    
    if ([_delegate respondsToSelector:@selector(command:didFinishColorUpdateWithColor:)]) {
        [_delegate command:self didFinishColorUpdateWithColor:color];
    }
}
@end
