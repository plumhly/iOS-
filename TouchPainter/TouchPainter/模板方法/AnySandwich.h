//
//  AnySandwich.h
//  TouchPainter
//
//  Created by plum on 2018/3/2.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnySandwich : NSObject

- (void)make;

- (void)prepareBread;
- (void)putBreadOnPlate;
- (void)addMeat;
- (void)addCondiments;
- (void)serve;

//hook
- (void)extraStep;

@end
