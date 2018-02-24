//
//  StandardCharacterBuilder.h
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "CharacterBuilder.h"

@interface StandardCharacterBuilder : CharacterBuilder

- (CharacterBuilder *)buildStrength:(CGFloat)value;
- (CharacterBuilder *)buildStamina:(CGFloat)value;
- (CharacterBuilder *)buildIntelligence:(CGFloat)value;
- (CharacterBuilder *)buildAgility:(CGFloat)value;
- (CharacterBuilder *)buildAggressiveness:(CGFloat)value;

@end
