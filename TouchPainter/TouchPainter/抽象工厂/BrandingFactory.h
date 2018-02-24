//
//  BrandingFactory.h
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BrandingFactory : NSObject

+ (BrandingFactory *)factory;

- (UIView *)brandedView;
- (UIButton *)brandedMainButton;
- (UIToolbar *)brandedToolbar;

@end
