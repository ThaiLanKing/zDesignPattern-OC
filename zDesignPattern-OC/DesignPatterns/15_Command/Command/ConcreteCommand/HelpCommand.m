//
//  HelpCommand.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "HelpCommand.h"
#import "HelpHandler.h"

@interface HelpCommand ()

@property (nonatomic, strong) HelpHandler *hhObj;

@end

@implementation HelpCommand

- (instancetype)init
{
    if (self = [super init]) {
        _hhObj = [HelpHandler new];
    }
    return self;
}

- (void)execute
{
    [_hhObj display];
}

@end
