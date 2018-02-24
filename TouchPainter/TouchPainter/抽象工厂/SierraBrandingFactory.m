//
//  SierraBrandingFactory.m
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "SierraBrandingFactory.h"
#import "SierraView.h"
#import "SierraButton.h"
#import "SierraToolbar.h"

@implementation SierraBrandingFactory

- (UIView *)brandedView {
    return [[SierraView alloc] init];
}

- (UIButton *)brandedMainButton {
    return [[SierraButton alloc] init];
}

- (UIToolbar *)brandedToolbar {
    return [SierraToolbar new];
}

@end
