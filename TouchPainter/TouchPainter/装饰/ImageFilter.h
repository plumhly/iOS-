//
//  ImageFilter.h
//  TouchPainter
//
//  Created by plum on 2018/3/1.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIImage+ImageComponent.h"

@interface ImageFilter : NSObject <ImageComponent>

@property (nonatomic, strong) id <ImageComponent> component;

- (void)apply;
- (instancetype)initWithImageComponent:(id <ImageComponent>)component;


@end
