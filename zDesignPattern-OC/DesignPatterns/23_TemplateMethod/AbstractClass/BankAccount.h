//
//  Account.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccount : NSObject

- (BOOL)validateAccount:(NSString *)account password:(NSString *)password;

- (void)calculateInterest;

- (void)display;

- (void)handleAccount:(NSString *)account password:(NSString *)password;

@end
