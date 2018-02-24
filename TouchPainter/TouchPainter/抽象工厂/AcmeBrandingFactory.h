//
//  AcmeBrandingFactory.h
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "BrandingFactory.h"

@interface AcmeBrandingFactory : BrandingFactory

- (UIView *)brandedView;
- (UIButton *)brandedMainButton;
- (UIToolbar *)brandedToolbar;

@end
