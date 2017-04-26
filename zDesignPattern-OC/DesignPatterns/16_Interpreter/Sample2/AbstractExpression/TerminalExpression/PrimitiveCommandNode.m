//
//  PrimitiveCommandNode.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/26.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "PrimitiveCommandNode.h"

@interface PrimitiveCommandNode ()

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *text;

@end

@implementation PrimitiveCommandNode

- (void)interpret:(DPContext *)context
{
    _name = [context currentToken];
    [context skipToken:_name];
    if (![_name isEqualToString:@"PRINT"] &&
        ![_name isEqualToString:@"BREAK"] &&
        ![_name isEqualToString:@"SPACE"]) {
        NSLog(@"非法命令！");
    }
    if ([_name isEqualToString:@"PRINT"]) {
        _text = [context currentToken];
        [context nextToken];
    }
}

- (void)execute
{
    if ([_name isEqualToString:@"PRINT"]) {
//        NSLog(@"%@", _text);
        printf("%s", [_text UTF8String]);
    }
    else if ([_name isEqualToString:@"SPACE"]) {
        printf("%s", [@" " UTF8String]);
    }
    else if ([_name isEqualToString:@"BREAK"]) {
        printf("\n");
    }
}

@end
