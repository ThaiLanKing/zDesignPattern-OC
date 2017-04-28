//
//  NormalState.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "NormalState.h"
#import "OverdraftState.h"
#import "RestrictedState.h"

@implementation NormalState

- (void)deposit:(double)amount
{
    [self.acc setBalance:([self.acc getBalance] + amount)];
    [self stateCheck];
}

- (void)withdraw:(double)amount
{
    [self.acc setBalance:([self.acc getBalance] - amount)];
    [self stateCheck];
}

- (void)computeInterest
{
    NSLog(@"正常状态，无需支付利息！");
}

- (void)stateCheck
{
    double balance = [self.acc getBalance];
    if (balance > -2000 && balance <= 0) {
        [self.acc setState:[[OverdraftState alloc] initWithAccountState:self]];
    }
    else if (balance == -2000) {
        [self.acc setState:[[RestrictedState alloc] initWithAccountState:self]];
    }
    else if (balance < -2000) {
        NSLog(@"操作受限！");
    }
}

@end
