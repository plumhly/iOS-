//
//  ImageTransformFilter.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "ImageTransformFilter.h"

@implementation ImageTransformFilter

- (instancetype)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform {
    if (self = [super initWithImageComponent:component]) {
        self.transform = transform;
    }
    return self;
}

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextConcatCTM(context, _transform);
}

@end
