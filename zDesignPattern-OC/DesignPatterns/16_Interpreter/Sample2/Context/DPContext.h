//
//  DPContext.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class StringTokenizer;

@interface DPContext : NSObject

- (instancetype)initWithText:(NSString *)text;
- (NSString *)nextToken;
- (NSString *)currentToken;
- (void)skipToken:(NSString *)token;
- (NSInteger)currentNumber;

@end


@interface StringTokenizer : NSObject

- (instancetype)initWithString:(NSString *)string;
- (BOOL)hasMoreTokens;
- (NSString *)nextToken;

@end
