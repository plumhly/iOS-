//
//  NSMutableArray+Stack.h
//  TouchPainter
//
//  Created by plum on 2018/3/1.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Stack)

- (void)push:(id)object;

- (id)pop;

- (id)dropBottom;

@end
