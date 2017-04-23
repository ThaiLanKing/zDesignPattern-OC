//
//  ScrollBarDecorator.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ScrollBarDecorator.h"

@implementation ScrollBarDecorator

- (void)display
{
    [self setScrollBar];
    [super display];
}

- (void)setScrollBar
{
    NSLog(@"为构件增加滚动条！");
}

@end
