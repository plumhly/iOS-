//
//  FlowerFactory.h
//  TouchPainter
//
//  Created by plum on 2018/3/5.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, FlowerType) {
    FlowerTypeAnemone,
    FlowerTypeCosmos,
    FlowerTypeGerberas,
    FlowerTypeHollyhock,
    FlowerTypeJasmin,
    FlowerTypeZinnia,
    FlowerTypeTotola
};

typedef struct ExtrisicFlowerState{
    __unsafe_unretained UIView *flowerView;
    CGRect rect;
} ExtrisicFlowerState;

@interface FlowerFactory : NSObject


- (UIView *)flowerViewWithType:(FlowerType)type;

@end
