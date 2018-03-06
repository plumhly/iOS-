//
//  Command.h
//  TouchPainter
//
//  Created by plum on 2018/2/26.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Command : NSObject

@property (nonatomic, strong) NSDictionary *userinfo;

- (void)execute;
- (void)undo;

@end
