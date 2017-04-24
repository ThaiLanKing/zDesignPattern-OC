//
//  DPCoordinates.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPCoordinates.h"

@implementation DPCoordinates

- (instancetype)initWithX:(NSInteger)x Y:(NSInteger)y
{
    if (self = [super init]) {
        _x = x;
        _y = y;
    }
    return self;
}

@end
