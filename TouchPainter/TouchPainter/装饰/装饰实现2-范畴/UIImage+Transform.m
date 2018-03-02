//
//  UIImage+Transform.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "UIImage+Transform.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Transform)

- (instancetype)imageWithTransform:(CGAffineTransform)transform  {
    CGContextRef context = [self beginContext];
    CGContextConcatCTM(context, transform);
    UIImage *image = [self getImageFromCurrentImageContext];
    [self endContext];
    return image;
}

@end
