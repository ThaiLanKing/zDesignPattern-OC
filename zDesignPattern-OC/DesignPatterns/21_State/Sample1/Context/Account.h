//
//  Account.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AccountState;

@interface Account : NSObject

- (instancetype)initWithOwner:(NSString *)owner balance:(double)balance;

- (void)setBalance:(double)balance;
- (double)getBalance;

- (void)setState:(AccountState *)state;

- (void)deposit:(double)amount;

- (void)withdraw:(double)amount;

- (void)computeInterest;

@end
