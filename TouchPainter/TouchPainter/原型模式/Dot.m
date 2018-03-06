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

- (void)drawWithContext:(CGContextRef)context {
    CGRect rect = {self.localtion,_size,_size};
    CGContextSetFillColorWithColor(context, _color.CGColor);
    CGContextFillEllipseInRect(context, rect);
}

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor {
    [visitor visitVertex:self];
}


#pragma mark - NSCoding

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _color = [aDecoder decodeObjectForKey:@"DotColor"];
        _size = [aDecoder decodeFloatForKey:@"DotSize"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:_color forKey:@"DotColor"];
    [aCoder encodeFloat:_size forKey:@"DotSize"];
}

@end
