//
//  EmployeeList.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "EmployeeList.h"
#import "Employee.h"

@interface EmployeeList ()

@property (nonatomic, strong) NSMutableArray<Employee *> *list;

@end

@implementation EmployeeList

- (instancetype)init
{
    if (self = [super init]) {
        _list = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}

- (void)addEmployee:(Employee *)employee
{
    [_list addObject:employee];
}

- (void)accept:(Department *)handler
{
    for (Employee *employee in _list) {
        [employee accept:handler];
    }
}

@end
