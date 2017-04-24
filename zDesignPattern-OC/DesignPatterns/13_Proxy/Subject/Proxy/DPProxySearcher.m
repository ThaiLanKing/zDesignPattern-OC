//
//  DPProxySearcher.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPProxySearcher.h"
#import "DPRealSearcher.h"
#import "AccessValidator.h"
#import "DPLogger.h"

@interface DPProxySearcher ()

@property (nonatomic, strong) DPRealSearcher *searcher;
@property (nonatomic, strong) AccessValidator *validator;
@property (nonatomic, strong) DPLogger *logger;

@end

@implementation DPProxySearcher

- (instancetype)init
{
    if (self = [super init]) {
        _searcher = [[DPRealSearcher alloc] init];
    }
    return self;
}

- (NSString *)doSearch:(NSString *)userID keyword:(NSString *)keyword
{
    if ([self validate:userID]) {
        NSString *result = [self.searcher doSearch:userID keyword:keyword];
        [self log:userID];
        return result;
    }
    else {
        return nil;
    }
}

- (BOOL)validate:(NSString *)userID
{
    _validator = [AccessValidator new];
    return [_validator validate:userID];
}

- (void)log:(NSString *)userID
{
    _logger = [DPLogger new];
    [_logger log:userID];
}

@end
