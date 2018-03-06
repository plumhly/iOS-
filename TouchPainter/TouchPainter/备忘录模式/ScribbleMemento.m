//
//  ScribbleMemento.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "ScribbleMemento.h"
#import "Mark.h"
#import "ScribbleMemento+Private.h"

@interface ScribbleMemento ()


@end

@implementation ScribbleMemento



#pragma mark - common method
+ (ScribbleMemento *)mementoWithData:(NSData *)data {
    id <Mark> restoreMark = (id <Mark>)[NSKeyedUnarchiver unarchiveObjectWithData:data];
    ScribbleMemento *memento = [[ScribbleMemento alloc] initWithMark:restoreMark];
    return memento;
}


- (NSData *)data {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:_mark];
    return data;
}


#pragma mark - private method

- (instancetype)initWithMark:(id<Mark>)aMark {
    if (self = [super init]) {
        self.mark = aMark;
    }
    return self;
}

@end
