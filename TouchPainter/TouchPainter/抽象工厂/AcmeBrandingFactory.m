//
//  AcmeBrandingFactory.m
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "AcmeBrandingFactory.h"
#import "AcmeView.h"
#import "AcmeButton.h"
#import "AcmeToolbar.h"

@implementation AcmeBrandingFactory

- (UIView *)brandedView {
    return [[AcmeView alloc] init];
}

- (UIButton *)brandedMainButton {
    return [[AcmeButton alloc] init];
}

- (UIToolbar *)brandedToolbar {
    return [AcmeToolbar new];
}

@end
