//
//  MarkEnumerator.h
//  TouchPainter
//
//  Created by plum on 2018/2/28.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MarkEnumerator : NSEnumerator

- (NSArray *)allObjects;
- (id)nextObject;

@end
