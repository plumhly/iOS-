//
//  PaletteViewController.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "PaletteViewController.h"
#import "SetStrokeColorCommand.h"
#import "CommandSlider.h"

@interface PaletteViewController () <SetStrokeColorCommandDelegate>

@property (nonatomic, strong) CommandSlider *redSlider;
@property (nonatomic, strong) CommandSlider *greenSlider;
@property (nonatomic, strong) CommandSlider *blueSlider;
@property (nonatomic, weak) IBOutlet UIView *paletteView;

@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCommandSliderValueChanged:(CommandSlider *)slider {
    [slider.command execute];
}

#pragma mark - SetStrokeColorCommandDelegate

- (void)command:(SetStrokeColorCommand *)command didRequestColorComponentsForRed:(CGFloat *)red green:(CGFloat *)green blue:(CGFloat *)blue {
    *red = _redSlider.value;
    *green = _greenSlider.value;
    *blue = _blueSlider.value;
}

- (void)command:(SetStrokeColorCommand *)command didFinishColorUpdateWithColor:(UIColor *)color {
    _paletteView.backgroundColor = color;
}

@end
