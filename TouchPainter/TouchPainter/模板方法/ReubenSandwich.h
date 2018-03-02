//
//  ReubenSandwich.h
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "AnySandwich.h"

@interface ReubenSandwich : AnySandwich

- (void)prepareBread;
- (void)addMeat;
- (void)addCondiments;

//hook
- (void)extraStep;

//鲁宾三明治特有操作
- (void)cutRyeBread;
- (void)addCornBeef;
- (void)addSauerkraut;
- (void)addThousandIslandDressing;
- (void)addSwissCheese;

//optional
- (void)grillIt;

@end
