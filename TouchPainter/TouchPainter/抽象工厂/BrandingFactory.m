//
//  BrandingFactory.m
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+ (BrandingFactory *)factory {
#ifdef USE_ACME
    return [AcmeBrandingFactory new];
#elif USE_SIERRA
    return [SierraBrandingFactory new];
#else
    return nil;
#endif
}

- (UIView *)brandedView {
    return nil;
}

- (UIButton *)brandedMainButton {
    return nil;
}

- (UIToolbar *)brandedToolbar {
    return nil;
}

@end
