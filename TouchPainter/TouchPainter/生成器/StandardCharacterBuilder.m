//
//  StandardCharacterBuilder.m
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "StandardCharacterBuilder.h"

@implementation StandardCharacterBuilder

- (CharacterBuilder *)buildStrength:(CGFloat)value {
    self.character.protection *= value;
    self.character.power *= value;
    return [super buildStrength:value];
}

- (CharacterBuilder *)buildStamina:(CGFloat)value {
    self.character.protection *= value;
    self.character.power *= value;
    return [super buildStamina:value];
}

- (CharacterBuilder *)buildIntelligence:(CGFloat)value {
    self.character.protection *= value;
    self.character.power /= value;
    return [super buildIntelligence:value];
}

- (CharacterBuilder *)buildAgility:(CGFloat)value {
    self.character.protection *= value;
    self.character.power /= value;
    return [super buildAgility:value];
}

- (CharacterBuilder *)buildAggressiveness:(CGFloat)value {
    self.character.protection /= value;
    self.character.power *= value;
    return [super buildAggressiveness:value];
}

@end
