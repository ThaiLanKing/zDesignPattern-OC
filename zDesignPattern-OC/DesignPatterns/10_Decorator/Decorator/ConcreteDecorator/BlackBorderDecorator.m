//
//  BlackBorderDecorator.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "BlackBorderDecorator.h"

@implementation BlackBorderDecorator

- (void)display
{
    [self setBlackBorder];
    [super display];
}

- (void)setBlackBorder
{
    NSLog(@"为构件增加黑色边框！");
}

@end
