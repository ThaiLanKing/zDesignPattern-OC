//
//  AccountState.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "AccountState.h"

@interface AccountState ()

@end

@implementation AccountState

- (instancetype)initWithAccount:(Account *)accout
{
    if (self = [super init]) {
        _acc = accout;
    }
    return self;
}

- (instancetype)initWithAccountState:(AccountState *)state
{
    return [self initWithAccount:state.acc];
}

@end
