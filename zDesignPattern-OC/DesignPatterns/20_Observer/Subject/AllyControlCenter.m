//
//  AllyControlCenter.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "AllyControlCenter.h"
#import "Observer.h"

@interface AllyControlCenter ()

@end

@implementation AllyControlCenter

- (instancetype)init
{
    if (self = [super init]) {
        _players = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}

- (void)join:(Observer *)obs
{
    NSLog(@"%@加入%@战队", [obs getName], _allyName);
    [_players addObject:obs];
}

- (void)quit:(Observer *)obs
{
    NSLog(@"%@退出%@战队", [obs getName], _allyName);
    [_players removeObject:obs];
}



@end
