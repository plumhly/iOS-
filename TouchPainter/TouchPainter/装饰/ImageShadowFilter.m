//
//  ImageShadowFilter.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "ImageShadowFilter.h"

@implementation ImageShadowFilter

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetShadow(context, CGSizeMake(-25, 15), 20.0);
}

@end
