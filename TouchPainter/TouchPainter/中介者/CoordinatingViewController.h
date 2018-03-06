//
//  CoordinatingViewController.h
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasViewController.h"
#import "PaletteViewController.h"
#import "ThumbnailViewController.h"


typedef NS_ENUM(NSInteger, ButtonTag) {
    kButtontagDone,
    kButtontagOpenPaletteView,
    kButtontagOpenThumbnailView,
    kButtontagUndo,
    kButtontagRedo
};


@interface CoordinatingViewController : UIViewController

@property (nonatomic, strong, readonly) CanvasViewController *canvasViewController;
@property (nonatomic, strong, readonly) UIViewController *activeViewController;

+ (instancetype)sharedInstance;
- (IBAction)requestViewChangeByObject:(UIBarButtonItem *)object;


@end
