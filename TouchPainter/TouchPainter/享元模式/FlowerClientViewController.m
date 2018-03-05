//
//  FlowerClientViewController.m
//  TouchPainter
//
//  Created by plum on 2018/3/5.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "FlowerClientViewController.h"
#import "FlowerView.h"
#import "FlowerFactory.h"
#import "FlyweightView.h"

@interface FlowerClientViewController ()

@property (nonatomic, strong) FlyweightView *flyweightView;

@end

@implementation FlowerClientViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FlowerFactory *factory = [FlowerFactory new];
    NSMutableArray *flowerList = [NSMutableArray arrayWithCapacity:500];
    
    for (int i = 0; i < 500; i++) {
        FlowerType type = arc4random() % FlowerTypeTotola;
        UIView *flowerView = [factory flowerViewWithType:type];
        
        CGRect bounds = [UIScreen mainScreen].bounds;
        CGFloat x = arc4random() % (NSInteger)bounds.size.width;
        CGFloat y = arc4random() % (NSInteger)bounds.size.height;
        
        NSInteger minSize = 10, maxSize = 50;
        CGFloat size = arc4random() % (maxSize - minSize + 1) + minSize;
        
        ExtrisicFlowerState state;
        state.flowerView = flowerView;
        state.rect = CGRectMake(x, y, size, size);
        [flowerList addObject:[NSValue value:&state withObjCType:@encode(ExtrisicFlowerState)]];
    }
    _flyweightView.flowerList = flowerList;
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
