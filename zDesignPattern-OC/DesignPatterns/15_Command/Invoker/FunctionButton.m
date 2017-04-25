//
//  FunctionButton.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "FunctionButton.h"

@implementation FunctionButton

- (instancetype)initWithName:(NSString *)name andCommand:(Command *)command
{
    if (self = [super init]) {
        _name = name;
        _command = command;
    }
    return self;
}

- (void)onClick
{
    NSLog(@"点击功能键：%@", self.name);
    [_command execute];
}

@end
