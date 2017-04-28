//
//  ParttimeEmployee.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "Employee.h"

@interface ParttimeEmployee : Employee

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) double hourWage;
@property (nonatomic, assign) NSInteger workTime;

- (instancetype)initWithName:(NSString *)name
                    hourWage:(double)wage
                    workTime:(NSInteger)workTime;

@end
