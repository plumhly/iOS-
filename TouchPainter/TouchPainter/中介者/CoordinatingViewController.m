//
//  CoordinatingViewController.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "CoordinatingViewController.h"

@interface CoordinatingViewController ()

@end

@implementation CoordinatingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)requestViewChangeByObject:(UIBarButtonItem *)object {
    if ([object isKindOfClass:[UIBarButtonItem class]]) {
        switch ([object tag]) {
            case kButtontagOpenPaletteView:
            {
                PaletteViewController *paletteVC = [PaletteViewController new];
                [_canvasViewController presentViewController:paletteVC animated:YES completion:nil];
                _activeViewController = paletteVC;
            }
                break;
                
            case kButtontagOpenThumbnailView:
            {
                ThumbnailViewController *thumbnailVC = [ThumbnailViewController new];
                [_canvasViewController presentViewController:thumbnailVC animated:YES completion:nil];
                _activeViewController = thumbnailVC;
            }
                break;
                
            case kButtontagUndo:
            case kButtontagRedo:
            {
                [_canvasViewController obBarButtonHit:object];
            }
                break;
            default:
            {
                [_canvasViewController dismissViewControllerAnimated:YES completion:nil];
                _activeViewController = _canvasViewController;
            }
                break;
        }
    } else {
        [_canvasViewController dismissViewControllerAnimated:YES completion:nil];
        _activeViewController = _canvasViewController;
    }
}

@end
