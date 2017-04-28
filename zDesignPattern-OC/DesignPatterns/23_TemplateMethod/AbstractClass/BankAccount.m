//
//  Account.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "BankAccount.h"

@implementation BankAccount

- (BOOL)validateAccount:(NSString *)account password:(NSString *)password
{
    NSLog(@"账号：%@", account);
    NSLog(@"密码：%@", password);
    
    if ([account isEqualToString:@"张无忌"] &&
        [password isEqualToString:@"123456"]) {
        return YES;
    }
    else {
        return NO;
    }
}

- (void)calculateInterest
{
    NSLog(@"do nothing");
}

- (void)display
{
    NSLog(@"显示利息！");
}

- (void)handleAccount:(NSString *)account password:(NSString *)password
{
    if (![self validateAccount:account password:password]) {
        NSLog(@"账号或密码错误！");
        return;
    }
    [self calculateInterest];
    [self display];
}

@end
