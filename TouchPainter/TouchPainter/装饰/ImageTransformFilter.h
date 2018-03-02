//
//  ImageTransformFilter.h
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageTransformFilter : ImageFilter

@property (nonatomic, assign) CGAffineTransform transform;


- (instancetype)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform;

- (void)apply;

@end
