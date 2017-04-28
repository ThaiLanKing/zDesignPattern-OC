//
//  FulltimeEmployee.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "Employee.h"

@interface FulltimeEmployee : Employee

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) double weeklyWage;
@property (nonatomic, assign) NSInteger workTime;

- (instancetype)initWithName:(NSString *)name
                  weeklyWage:(double)wage
                    workTime:(NSInteger)workTime;

@end
