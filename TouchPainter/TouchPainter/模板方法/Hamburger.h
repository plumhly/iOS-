//
//  Hamburger.h
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "AnySandwich.h"

@interface Hamburger : AnySandwich

- (void)prepareBread;
- (void)addMeat;
- (void)addCondiments;

//汉堡特有操作
- (void)getBurgerBun;
- (void)addKetchup;
- (void)addMustard;
- (void)addBeefPatty;
- (void)addCheese;
- (void)addPickles;

@end
