//
//  CanvasViewController.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "CanvasViewController.h"
#import "CanvasViewGenerator.h"
#import "Dot.h"
#import "Stroke.h"

@interface CanvasViewController ()
@property (nonatomic, assign) CGPoint startPoint;

@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:defaultGenerator];
    
    //
    self.scribble = [Scribble new];
}

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    [_canvasView removeFromSuperview];
    CGRect aFrame = CGRectMake(0, 0, 320, 436);
    _canvasView = [generator canvasViewWithFrame:aFrame];
    [self.view addSubview:_canvasView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setScribble:(Scribble *)scribble {
    if (_scribble != scribble) {
        _scribble = scribble;
        [_scribble addObserver:self forKeyPath:@"parentMark" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial context:nil];
    }
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _startPoint = [[touches anyObject] locationInView:_canvasView];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:_canvasView];
    
    //如果起点和先前的点一样，就画一条线
    if (CGPointEqualToPoint(lastPoint, _startPoint)) {
        id <Mark> newStroke = [Stroke new];
        newStroke.color = _strokeColor;
        newStroke.size = _strokeSize;
        [_scribble addMark:newStroke shouldAddToPreviousMark:NO];
    }
    
    CGPoint thisPoint = [[touches anyObject] locationInView:_canvasView];
    Vertex *vertex = [[Vertex alloc] initWithLocaltion:thisPoint];
    [_scribble addMark:vertex shouldAddToPreviousMark:YES];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:_canvasView];
    CGPoint thisPoint = [[touches anyObject] locationInView:_canvasView];
    if (CGPointEqualToPoint(lastPoint, thisPoint)) {
        id <Mark> dot = [Dot new];
        dot.color = _strokeColor;
        dot.size = _strokeSize;
        [_scribble addMark:dot shouldAddToPreviousMark:NO];
    }
    
    _startPoint = CGPointZero;
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _startPoint = CGPointZero;
}

- (void)dealloc {
    [_scribble removeObserver:self forKeyPath:@"parentMark" context:nil];
}

#pragma mark - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([object isKindOfClass:[Scribble class]] && [keyPath isEqualToString:@"parentMark"]) {
        id <Mark> mark = [change objectForKey:NSKeyValueChangeNewKey];
        _canvasView.mark = mark;
        [_canvasView setNeedsFocusUpdate];
    }
}

@end
