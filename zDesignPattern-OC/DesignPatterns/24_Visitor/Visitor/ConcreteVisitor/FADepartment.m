//
//  FADepartment.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "FADepartment.h"
#import "FulltimeEmployee.h"
#import "ParttimeEmployee.h"

@implementation FADepartment

- (void)visit:(Employee *)employee
{
    if ([employee isKindOfClass:[FulltimeEmployee class]]) {
        [self visitFulltimeExployee:(FulltimeEmployee *)employee];
    }
    else if ([employee isKindOfClass:[ParttimeEmployee class]]) {
        [self visitParttimeEmployee:(ParttimeEmployee *)employee];
    }
}

- (void)visitFulltimeExployee:(FulltimeEmployee *)employee
{
    NSInteger workTime = employee.workTime;
    double weeklyWage = employee.weeklyWage;
    if (workTime > 40) {
        weeklyWage = weeklyWage + (workTime - 40) * 100;
    }
    else if (workTime < 40) {
        weeklyWage = weeklyWage - (40 - workTime) * 80;
        weeklyWage = MAX(weeklyWage, 0);
    }
    NSLog(@"正式员工%@实际工资为%.1f元", employee.name, weeklyWage);
}

- (void)visitParttimeEmployee:(ParttimeEmployee *)employee
{
    NSInteger workTime = employee.workTime;
    double hourWage = employee.hourWage;
    NSLog(@"临时工%@实际工资为%.1f元", employee.name, hourWage * workTime);
}

@end
