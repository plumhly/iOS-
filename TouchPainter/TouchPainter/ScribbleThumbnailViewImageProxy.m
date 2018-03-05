//
//  ScribbleThumbnailProxy.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "ScribbleThumbnailViewImageProxy.h"

@interface ScribbleThumbnailViewImageProxy()

@property (nonatomic, strong) UIImage *realImage;
@property (nonatomic, assign) BOOL loadingThreadHasLaunched;


@end

@implementation ScribbleThumbnailViewImageProxy

- (void)drawRect:(CGRect)rect {
    if (_realImage == nil) {
        //绘制占位图
        if (!_loadingThreadHasLaunched) {
            [self performSelectorInBackground:@selector(forwardImageLoadingThread) withObject:nil];
            _loadingThreadHasLaunched = YES;
        }
    } else {
        [_realImage drawInRect:rect];
    }
}

- (void)forwardImageLoadingThread {
    [self image];
    [self performSelectorInBackground:@selector(setNeedsDisplay) withObject:nil];
}

- (UIImage *)image {
    if (!_realImage) {
        _realImage = [UIImage imageWithContentsOfFile:_imagePath];
    }
    return _realImage;
}

@end
