//
//  ParttimeEmployee.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ParttimeEmployee.h"

@implementation ParttimeEmployee

- (instancetype)initWithName:(NSString *)name
                  hourWage:(double)wage
                    workTime:(NSInteger)workTime
{
    if (self = [super init]) {
        _name = name;
        _hourWage = wage;
        _workTime = workTime;
    }
    return self;
}

- (void)accept:(Department *)handler
{
    [handler visit:self];
}

@end
