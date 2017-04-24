//
//  DPCipherMachine.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPCipherMachine.h"

@implementation DPCipherMachine

- (NSString *)Encrypt:(NSString *)plainText
{
    NSLog(@"数据加密，将明文转换为密文：");
    NSString *resultStr = @"";
    for (int i = 0; i < plainText.length; ++i) {
        unichar eachChar = [plainText characterAtIndex:i];
        unichar encryedChar = eachChar % 7;
        NSString *encryedStr = [NSString stringWithFormat:@"%d", encryedChar];
        resultStr = [resultStr stringByAppendingString:encryedStr];
    }
    NSLog(@"%@", resultStr);
    return resultStr;
}

@end
