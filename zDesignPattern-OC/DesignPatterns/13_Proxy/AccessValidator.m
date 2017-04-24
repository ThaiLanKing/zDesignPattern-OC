//
//  AccessValidator.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "AccessValidator.h"

@implementation AccessValidator

- (BOOL)validate:(NSString *)userID
{
    NSLog(@"在数据库中验证用户\'%@\'是否合法", userID);
    if ([userID isEqualToString:@"杨过"]) {
        NSLog(@"\'%@\'登录成功！", userID);
        return YES;
    }
    else {
        NSLog(@"\'%@\'登录失败！", userID);
        return NO;
    }
}

@end
