
//
//  ImageFilter.m
//  TouchPainter
//
//  Created by plum on 2018/3/1.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter

- (void)apply  {
    //子类重载
}

- (instancetype)initWithImageComponent:(id<ImageComponent>)component {
    if (self = [super init]) {
        _component = component;
    }
    return self;
}

+ (BOOL)resolveClassMethod:(SEL)sel {
    return YES;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"]) {
        [self apply];
    }
    return _component;
}

@end
