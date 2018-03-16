//
//  StrategyViewController.m
//  TouchPainter
//
//  Created by Plum on 2018/3/4.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "StrategyViewController.h"

@interface StrategyViewController ()<UITextFieldDelegate>

@end

@implementation StrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField validate];
    }
}



@end
