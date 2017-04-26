//
//  DPContext.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPContext.h"

@interface DPContext ()

@property (nonatomic, strong) StringTokenizer *tokenizer;
@property (nonatomic, copy) NSString *currentToken;

@end

@implementation DPContext

- (instancetype)initWithText:(NSString *)text
{
    if (self = [super init]) {
        _tokenizer = [[StringTokenizer alloc] initWithString:text];
        [self nextToken];
    }
    return self;
}

- (NSString *)nextToken
{
    if (_tokenizer.hasMoreTokens) {
        _currentToken = [_tokenizer nextToken];
    }
    else {
        _currentToken = nil;
    }
    return _currentToken;
}

- (NSString *)currentToken
{
    return _currentToken;
}

- (void)skipToken:(NSString *)token
{
    if (![token isEqualToString:_currentToken]) {
        NSLog(@"错误提示：%@解释错误！", _currentToken);
    }
    [self nextToken];
}

- (NSInteger)currentNumber
{
    NSInteger number = 0;
    @try {
        number = [_currentToken integerValue];
    } @catch (NSException *exception) {
        NSLog(@"错误提示：%@", [exception description]);
    } @finally {
        return number;
    }
}

@end


@implementation StringTokenizer
{
    NSString *_string;
    NSMutableArray *_tokens;
}

- (instancetype)initWithString:(NSString *)string
{
    if (self = [super init]) {
        _string = string;
        _tokens = [[string componentsSeparatedByString:@" "] mutableCopy];
    }
    return self;
}

- (BOOL)hasMoreTokens
{
    return [_tokens count] > 0;
}

- (NSString *)nextToken
{
    NSString *result = nil;
    if ([self hasMoreTokens]) {
        result = [_tokens firstObject];
        [_tokens removeObjectAtIndex:0];
    }
    return result;
}

@end
