//
//  HistogramChart.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "HistogramChart.h"

@implementation HistogramChart

- (instancetype)init
{
    if (self = [super init]) {
        NSLog(@"创建柱状图！");
    }
    return self;
}

- (void)display
{
    NSLog(@"显示柱状图");
}

@end
