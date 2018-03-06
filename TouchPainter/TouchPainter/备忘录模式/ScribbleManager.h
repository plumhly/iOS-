//
//  ScribbleManager.h
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Scribble.h"
#import "ScribbleThumbnail.h"
#import "ScribbleThumbnailViewImageProxy.h"

@interface ScribbleManager : NSObject


- (void)saveScribble:(Scribble *)scribble thumbnail:(UIImage *)image;
- (NSInteger)numberOfScribbles;
- (Scribble *)scribbleAtIndex:(NSInteger)index;
- (ScribbleThumbnail *)scribbleThumbnailAtIndex:(NSInteger)index;
@end
