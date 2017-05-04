//
//  WeeklyLog.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/21.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "WeeklyLog.h"

@implementation WeeklyLog

- (id)copyWithZone:(NSZone *)zone
{
    WeeklyLog *weeklyLog = [[[self class] allocWithZone:zone] init];
    weeklyLog.name = [self.name copyWithZone:zone];
    weeklyLog.date = [self.date copyWithZone:zone];
    weeklyLog.content = [self.content copyWithZone:zone];
    
    return weeklyLog;
}

@end
