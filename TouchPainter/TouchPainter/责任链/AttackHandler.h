//
//  AttackHandler.h
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"

@interface AttackHandler : NSObject

@property (nonatomic, strong) AttackHandler *nextAttackHandler;

- (void)handleAttack:(Attack *)attack;

@end
