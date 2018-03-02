//
//  AttackHandler.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "AttackHandler.h"

@implementation AttackHandler

- (void)handleAttack:(Attack *)attack {
    [_nextAttackHandler handleAttack:attack];
}

@end
