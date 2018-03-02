//
//  DecorateViewController.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "DecorateViewController.h"
#import "DecorateView.h"
#import "ImageShadowFilter.h"
#import "ImageTransformFilter.h"

//category
#import "UIImage+Transform.h"
#import "UIImage+Shadow.h"

@interface DecorateViewController ()

@end

@implementation DecorateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"Image.png"];
    
    //变换
    CGAffineTransform rotate = CGAffineTransformMakeRotation(-M_PI / 4.0);
    CGAffineTransform translate = CGAffineTransformMakeTranslation(-image.size.width / 2.0, image.size.height / 8.0);
    CGAffineTransform concate = CGAffineTransformConcat(rotate, translate);
    
    /* 子类化
    id <ImageComponent> transformImage = [[ImageTransformFilter alloc] initWithImageComponent:image transform:concate];
    id <ImageComponent> finalImage = [[ImageShadowFilter alloc] initWithImageComponent:transformImage];
    */
    
    //范畴实现
    UIImage *transformImage = [image imageWithTransform:concate];
    id <ImageComponent> finalImage = [transformImage imageWithDropShadow];

    DecorateView *decorateView = [[DecorateView alloc] initWithFrame:self.view.bounds];
    decorateView.image = finalImage;
    [self.view addSubview:decorateView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
