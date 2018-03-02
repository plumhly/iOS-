//
//  UIImage+BaseFilter.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "UIImage+BaseFilter.h"

@implementation UIImage (BaseFilter)

- (CGContextRef)beginContext {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    return context;
}

- (UIImage *)getImageFromCurrentImageContext {
    [self drawAtPoint:CGPointZero];
    return UIGraphicsGetImageFromCurrentImageContext();
}

- (void)endContext {
    UIGraphicsEndImageContext();
}

@end
