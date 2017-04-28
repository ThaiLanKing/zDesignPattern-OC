//
//  Account.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "Account.h"
#import "AccountState.h"
#import "NormalState.h"

@interface Account ()

@property (nonatomic, strong) AccountState *state;
//开户名
@property (nonatomic, copy) NSString *owner;
//账户余额
@property (nonatomic, assign) double balance;

@end

@implementation Account

- (instancetype)initWithOwner:(NSString *)owner balance:(double)balance
{
    if (self = [super init]) {
        _owner = owner;
        _balance = balance;
        _state = [[NormalState alloc] initWithAccount:self];
        NSLog(@"%@开户，金额为%.2f", owner, balance);
        NSLog(@"--------------------------------");
    }
    return self;
}

- (void)deposit:(double)amount
{
    NSLog(@"%@存款%.2f", _owner, amount);
    [_state deposit:amount];
    NSLog(@"现在余额为%.2f", _balance);
    NSLog(@"现在账户状态为%@", NSStringFromClass([_state class]));
    NSLog(@"-----------------------------");
}

- (void)withdraw:(double)amount
{
    NSLog(@"%@取款%.2f", _owner, amount);
    [_state withdraw:amount];
    NSLog(@"现在余额为%.2f", _balance);
    NSLog(@"现在账户状态为%@", NSStringFromClass([_state class]));
    NSLog(@"-----------------------------");
}

- (void)computeInterest
{
    [_state computeInterest];
}

- (void)setBalance:(double)balance
{
    _balance = balance;
}

- (double)getBalance
{
    return _balance;
}

- (void)setState:(AccountState *)state
{
    _state = state;
}

@end
