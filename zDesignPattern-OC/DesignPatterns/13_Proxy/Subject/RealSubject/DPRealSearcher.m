//
//  DPRealSearcher.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPRealSearcher.h"

@implementation DPRealSearcher

- (NSString *)doSearch:(NSString *)userID keyword:(NSString *)keyword
{
    NSLog(@"用户\'%@\'使用关键词\'%@\'查询商务信息", userID, keyword);
    return @"返回具体内容";
}

@end
