//
//  ReubenSandwich.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "ReubenSandwich.h"

@implementation ReubenSandwich


- (void)prepareBread {
    [self cutRyeBread];
}

- (void)addMeat {
    [self addCornBeef];
}

- (void)addCondiments {
    [self addSauerkraut];
    [self addThousandIslandDressing];
    [self addSwissCheese];
}

//hook
- (void)extraStep {
    [self grillIt];
}


#pragma mark - 特有方法
- (void)cutRyeBread {
    
}

- (void)addCornBeef {
    
}

- (void)addSauerkraut {
    
}

- (void)addThousandIslandDressing {
    
}

- (void)addSwissCheese {
    
}

//other
- (void)grillIt {
    
}

@end
