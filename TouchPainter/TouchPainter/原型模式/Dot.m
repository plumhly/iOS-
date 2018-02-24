//
//  Dot.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "Dot.h"

@implementation Dot {
    @private
    UIColor *_color;
    CGFloat _size;
    CGPoint _location;
}

@synthesize size = _size, color = _color, localtion = _location;

- (instancetype)copyWithZone:(NSZone *)zone {
    Dot *dotCopy = [[[self class] allocWithZone:zone] initWithLocaltion:_location];
    dotCopy.color = [UIColor colorWithCGColor:_color.CGColor];
    dotCopy.size = _size;
    return dotCopy;
}

@end
