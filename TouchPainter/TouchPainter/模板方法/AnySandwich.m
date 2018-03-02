//
//  AnySandwich.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "AnySandwich.h"

@implementation AnySandwich

- (void)make {
    [self prepareBread];
    [self putBreadOnPlate];
    [self addMeat];
    [self addCondiments];
    [self extraStep];
    [self serve];
}


//通用方法
- (void)putBreadOnPlate {
 
}

- (void)serve {
    
}


//子类必须重载的方法
- (void)prepareBread {
     [NSException raise:NSInternalInconsistencyException format:@"你需要在子类中实现 %@", NSStringFromSelector(_cmd)];
}

- (void)addMeat {
     [NSException raise:NSInternalInconsistencyException format:@"你需要在子类中实现 %@", NSStringFromSelector(_cmd)];
}

- (void)addCondiments {
     [NSException raise:NSInternalInconsistencyException format:@"你需要在子类中实现 %@", NSStringFromSelector(_cmd)];
}


@end
