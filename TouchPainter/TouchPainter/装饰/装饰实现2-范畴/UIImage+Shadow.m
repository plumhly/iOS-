//
//  UIImage+Shadow.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "UIImage+Shadow.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Shadow)

- (UIImage *)imageWithDropShadow {
    CGContextRef context = [self beginContext];
    CGSize offset = CGSizeMake(-25, 15);
    CGContextSetShadow(context, offset, 20);
    UIImage *image = [self getImageFromCurrentImageContext];
    [self endContext];
    return image;
}

@end
