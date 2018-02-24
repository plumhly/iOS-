//
//  Dot.h
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "Vertex.h"

@interface Dot : Vertex

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint localtion;


- (instancetype)copyWithZone:(NSZone *)zone;


@end
