//
//  FlyweightView.m
//  TouchPainter
//
//  Created by plum on 2018/3/5.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "FlyweightView.h"
#import "FlowerFactory.h"

@implementation FlyweightView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect {
    for (NSValue *value in _flowerList) {
        ExtrisicFlowerState state;
        [value getValue:&state];
        
        UIView *flowerView = state.flowerView;
        CGRect rect = state.rect;
        [flowerView drawRect:rect];
    }
}

@end
