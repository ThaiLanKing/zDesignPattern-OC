//
//  DirectionNode.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DirectionNode.h"

@interface DirectionNode ()

@property (nonatomic, copy) NSString *direction;

@end

@implementation DirectionNode

- (instancetype)initWithDirection:(NSString *)direction
{
    if (self = [super init]) {
        _direction = direction;
    }
    return self;
}

- (NSString *)interpret
{
    NSString *direction = [_direction lowercaseString];
    if ([direction isEqualToString:@"up"]) {
        return @"向上";
    }
    else if ([direction isEqualToString:@"down"]) {
        return @"向下";
    }
    else if ([direction isEqualToString:@"left"]) {
        return @"向左";
    }
    else if ([direction isEqualToString:@"right"]) {
        return @"向有";
    }
    else {
        return @"无效指令";
    }
}

@end
