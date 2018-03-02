//
//  MetalArmor.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "MetalArmor.h"
#import "SwordAttack.h"

@implementation MetalArmor

- (void)handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[SwordAttack class]]) {
        NSLog(@"成功防御刀剑攻击");
    } else {
        NSLog(@"没有防御刀剑攻击");
        [super handleAttack:attack];
    }
}

@end
