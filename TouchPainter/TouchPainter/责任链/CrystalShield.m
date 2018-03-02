//
//  CrystalShield.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "CrystalShield.h"
#import "MagicFireAttack.h"

@implementation CrystalShield

- (void)handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[MagicFireAttack class]]) {
        NSLog(@"成功防御魔法攻击");
    } else {
        NSLog(@"没有防御魔法攻击");
        [super handleAttack:attack];
    }
}

@end
