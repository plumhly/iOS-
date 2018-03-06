//
//  CanvasViewController.h
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Scribble.h"
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

@interface CanvasViewController : UIViewController

@property (nonatomic, strong) CanvasView *canvasView;
@property (nonatomic, strong) Scribble *scribble;
@property (nonatomic, strong) UIColor *strokeColor;
@property (nonatomic, assign) CGFloat strokeSize;

- (IBAction)obBarButtonHit:(UIBarButtonItem *)sender;


@end
