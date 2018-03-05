//
//  ScribbleThumbnailView.h
//  TouchPainter
//
//  Created by plum on 2018/3/5.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScribbleThumbnailView : UIView
{
    @protected
    NSString *_imagePath;
}


@property (nonatomic, readonly) UIImage *image;
@property (nonatomic, copy) NSString *imagePath;

@end
