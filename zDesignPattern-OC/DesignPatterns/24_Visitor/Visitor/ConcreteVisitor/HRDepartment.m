//
//  HRDepartment.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "HRDepartment.h"
#import "FulltimeEmployee.h"
#import "ParttimeEmployee.h"

@implementation HRDepartment

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
    NSLog(@"正式员工%@实际工作时长为%d", employee.name, (int)workTime);
    if (workTime > 40) {
        NSLog(@"正式员工%@加班时长为%d", employee.name, (int)workTime - 40);
    }
    else if (workTime < 40) {
        NSLog(@"正式员工%@请假时长为%d", employee.name, 40 - (int)workTime);
    }
    
}

- (void)visitParttimeEmployee:(ParttimeEmployee *)employee
{
    NSInteger workTime = employee.workTime;
    NSLog(@"临时工%@实际工作时长为%d", employee.name, (int)workTime);
}

@end
