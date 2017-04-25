//
//  Approver.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "Approver.h"

@implementation Approver

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

@end
