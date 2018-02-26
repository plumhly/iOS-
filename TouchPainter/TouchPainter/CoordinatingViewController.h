//
//  CoordinatingViewController.h
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasViewController.h"

@interface CoordinatingViewController : UIViewController

@property (nonatomic, strong) CanvasViewController *canvasViewController;

+ (instancetype)sharedInstance;


@end
