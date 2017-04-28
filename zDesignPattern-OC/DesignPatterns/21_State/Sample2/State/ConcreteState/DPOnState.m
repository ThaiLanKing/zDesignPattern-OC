//
//  DPOnState.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPOnState.h"
#import "DPSwitch.h"

@implementation DPOnState

- (void)on:(DPSwitch *)s
{
    printf("已经打开");
}

- (void)off:(DPSwitch *)s
{
    printf("关闭！");
    [s setState:[DPSwitch getState:@"off"]];
}

@end
