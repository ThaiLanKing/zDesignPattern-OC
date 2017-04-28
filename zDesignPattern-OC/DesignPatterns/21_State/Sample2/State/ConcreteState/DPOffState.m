//
//  DPOffState.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPOffState.h"
#import "DPSwitch.h"

@implementation DPOffState

- (void)on:(DPSwitch *)s
{
    printf("打开！");
    [s setState:[DPSwitch getState:@"on"]];
}

- (void)off:(DPSwitch *)s
{
    printf("已经关闭");
}

@end
