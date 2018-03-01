//
//  ScribbleManager.m
//  TouchPainter
//
//  Created by plum on 2018/2/23.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "ScribbleManager.h"


@implementation ScribbleManager

- (void)saveScribble:(Scribble *)scribble thumbnail:(UIImage *)image {
    NSInteger newIndex = [self numberOfScribbles] + 1;
    
    NSString *scribbleDataName = [NSString stringWithFormat:@"data_%ld", (long)newIndex];
    NSString *scribbleThumbnailName = [NSString stringWithFormat:@"thumbnail_%ld.png", (long)newIndex];
    
    //从涂鸦获取备忘录
    ScribbleMemento *scribbleMemento = [scribble scribbleMemento];
    NSData *mementoData = [scribbleMemento data];
    NSString *mementoPath = [[self scribbleDataPath] stringByAppendingPathComponent:scribbleDataName];
    [mementoData writeToFile:mementoPath atomically:YES];
    
    NSString *scribbleThumbnailPath = [[self scribbleThumbnailPath] stringByAppendingPathComponent:scribbleThumbnailName];
    NSData *imageData = UIImagePNGRepresentation(image);
    [imageData writeToFile:scribbleThumbnailPath atomically:YES];
}

- (NSString *)scribbleDataPath {
    return @"";
}

- (NSString *)scribbleThumbnailPath {
    return @"";
}

@end
