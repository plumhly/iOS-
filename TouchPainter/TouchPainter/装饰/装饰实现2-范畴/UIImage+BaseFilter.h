//
//  UIImage+BaseFilter.h
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (BaseFilter)

- (CGContextRef)beginContext;
- (UIImage *)getImageFromCurrentImageContext;
- (void)endContext;

@end
