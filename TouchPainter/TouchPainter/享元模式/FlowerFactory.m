//
//  FlowerFactory.m
//  TouchPainter
//
//  Created by plum on 2018/3/5.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "FlowerFactory.h"
#import "FlowerView.h"

@interface FlowerFactory()

@property (nonatomic, strong) NSMutableDictionary *flowerPool;

@end

@implementation FlowerFactory


- (NSMutableDictionary *)flowerPool {
    if (!_flowerPool) {
        _flowerPool = [NSMutableDictionary dictionaryWithCapacity:FlowerTypeTotola];
    }
    return _flowerPool;
}


- (UIView *)flowerViewWithType:(FlowerType)type {
    UIView *flowerView = [self.flowerPool objectForKey:[NSNumber numberWithInteger:type]];
    if (!flowerView) {
        UIImage *image = nil;
        switch (type) {
            case FlowerTypeAnemone:
                image = [UIImage imageNamed:@"0"];
                break;
                
            case FlowerTypeCosmos:
                image = [UIImage imageNamed:@"1"];
                break;
                
            case FlowerTypeGerberas:
                image = [UIImage imageNamed:@"2"];
                break;
                
            case FlowerTypeHollyhock:
                image = [UIImage imageNamed:@"3"];
                break;
                
            case FlowerTypeJasmin:
                image = [UIImage imageNamed:@"4"];
                break;
                
            case FlowerTypeZinnia:
                image = [UIImage imageNamed:@"5"];
                break;
            default:
                break;
        }
        flowerView = [[FlowerView alloc] initWithImage:image];
        [self.flowerPool setObject:flowerView forKey:[NSNumber numberWithUnsignedInteger:type]];
    }
    return flowerView;
}


@end
