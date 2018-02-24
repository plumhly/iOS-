//
//  CharacterBuilder.m
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "CharacterBuilder.h"

@implementation CharacterBuilder

- (CharacterBuilder *)buildNewCharacter {
    _character = [Character new];
    return self;
}

- (CharacterBuilder *)buildStrength:(CGFloat)value {
    _character.strength = value;
    return self;
}

- (CharacterBuilder *)buildStamina:(CGFloat)value {
    _character.stamina = value;
    return self;
}

- (CharacterBuilder *)buildIntelligence:(CGFloat)value {
    _character.intelligence = value;
    return self;
}

- (CharacterBuilder *)buildAgility:(CGFloat)value {
    _character.agility = value;
    return self;
}

- (CharacterBuilder *)buildAggressiveness:(CGFloat)value {
    _character.aggressiveness = value;
    return self;
}

@end
