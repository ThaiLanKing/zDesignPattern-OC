//
//  PieChart.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "PieChart.h"

@implementation PieChart

- (instancetype)init
{
    if (self = [super init]) {
        NSLog(@"创建饼状图！");
    }
    return self;
}

- (void)display
{
    NSLog(@"显示饼状图！");
}

@end
