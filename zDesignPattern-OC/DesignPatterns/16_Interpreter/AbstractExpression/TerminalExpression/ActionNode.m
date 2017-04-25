//
//  ActionNode.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ActionNode.h"

@interface ActionNode ()

@property (nonatomic, copy) NSString *action;

@end

@implementation ActionNode

- (instancetype)initWithAction:(NSString *)action
{
    if (self = [super init]) {
        _action = action;
    }
    return self;
}

- (NSString *)interpret
{
    NSString *action = [_action lowercaseString];
    if ([action isEqualToString:@"move"]) {
        return @"移动";
    }
    else if ([action isEqualToString:@"run"]) {
        return @"快速移动";
    }
    else {
        return @"无效指令";
    }
}

@end
