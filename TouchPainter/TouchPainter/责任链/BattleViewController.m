//
//  BattleViewController.m
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "BattleViewController.h"
#import "SwordAttack.h"
#import "MagicFireAttack.h"
#import "LightAttack.h"
#import "MetalArmor.h"
#import "CrystalShield.h"
#import "Avatar.h"

@interface BattleViewController ()

@end

@implementation BattleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //人物
    AttackHandler *person = [Avatar new];
    
    //穿上金属盔甲
    AttackHandler *metal = [[MetalArmor alloc] init];
    metal.nextAttackHandler = person;
    
    //穿上水晶
    AttackHandler *superAvatar = [CrystalShield new];
    superAvatar.nextAttackHandler = metal;
    
    //....其他行动
    
    //用剑攻击
    Attack *sword = [SwordAttack new];
    [superAvatar handleAttack:sword];
    
    //魔法攻击
    Attack *magic = [MagicFireAttack new];
    [superAvatar handleAttack:magic];
    
    //雷电攻击
    Attack *light = [LightAttack new];
    [superAvatar handleAttack:light];
    
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
