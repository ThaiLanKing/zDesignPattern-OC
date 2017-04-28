//
//  FulltimeEmployee.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "FulltimeEmployee.h"

@interface FulltimeEmployee ()

@end

@implementation FulltimeEmployee

- (instancetype)initWithName:(NSString *)name
                  weeklyWage:(double)wage
                    workTime:(NSInteger)workTime
{
    if (self = [super init]) {
        _name = name;
        _weeklyWage = wage;
        _workTime = workTime;
    }
    return self;
}

- (void)accept:(Department *)handler
{
    [handler visit:self];
}

@end
