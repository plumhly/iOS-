//
//  ScribbleMemento.h
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScribbleMemento : NSObject


+ (ScribbleMemento *)mementoWithData:(NSData *)data;
- (NSData *)data;

@end
