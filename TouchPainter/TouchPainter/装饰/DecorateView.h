//
//  DecorateView.h
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageComponent.h"

@interface DecorateView : UIView

@property (nonatomic, strong) id <ImageComponent> image;

@end
