//
//  DPLogger.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPLogger.h"

@implementation DPLogger

- (void)log:(NSString *)userID
{
    NSLog(@"更新数据库，用户\'%@\'查询次数加1！", userID);
}

@end
