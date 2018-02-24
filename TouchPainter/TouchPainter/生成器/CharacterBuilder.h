//
//  CharacterBuilder.h
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

@interface CharacterBuilder : NSObject

@property (nonatomic, strong, readonly) Character *character;


- (CharacterBuilder *)buildNewCharacter;
- (CharacterBuilder *)buildStrength:(CGFloat)value;
- (CharacterBuilder *)buildStamina:(CGFloat)value;
- (CharacterBuilder *)buildIntelligence:(CGFloat)value;
- (CharacterBuilder *)buildAgility:(CGFloat)value;
- (CharacterBuilder *)buildAggressiveness:(CGFloat)value;

@end
