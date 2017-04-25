//
//  MinimizeCommand.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "MinimizeCommand.h"
#import "WindowHandler.h"

@interface MinimizeCommand ()

@property (nonatomic, strong) WindowHandler *whObj;

@end

@implementation MinimizeCommand

- (instancetype)init
{
    if (self = [super init]) {
        _whObj = [WindowHandler new];
    }
    return self;
}

- (void)execute
{
    [_whObj minimize];
}

@end
