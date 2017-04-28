//
//  RestrictedState.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "RestrictedState.h"
#import "NormalState.h"
#import "OverdraftState.h"

@implementation RestrictedState

- (void)deposit:(double)amount
{
    [self.acc setBalance:([self.acc getBalance] + amount)];
    [self stateCheck];
}

- (void)withdraw:(double)amount
{
    NSLog(@"账号受限，取款失败。");
}

- (void)computeInterest
{
    NSLog(@"计算利息！");
}

- (void)stateCheck
{
    double balance = [self.acc getBalance];
    if (balance > 0) {
        [self.acc setState:[[NormalState alloc] initWithAccountState:self]];
    }
    else if (balance > -2000) {
        [self.acc setState:[[OverdraftState alloc] initWithAccountState:self]];
    }
}

@end
