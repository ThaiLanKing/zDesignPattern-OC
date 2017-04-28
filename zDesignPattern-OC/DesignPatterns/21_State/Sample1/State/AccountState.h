//
//  AccountState.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface AccountState : NSObject

@property (nonatomic, weak) Account *acc;

- (instancetype)initWithAccount:(Account *)accout;
- (instancetype)initWithAccountState:(AccountState *)state;

- (void)deposit:(double)amount;
- (void)withdraw:(double)amount;
- (void)computeInterest;
- (void)stateCheck;

@end
