//
//  FBSettingWindow.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "FBSettingWindow.h"

@implementation FBSettingWindow

- (instancetype)initWithTitle:(NSString *)title
{
    if (self = [super init]) {
        _title = title;
        _functionButtons = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}

- (void)addFunctionButton:(FunctionButton *)fb
{
    [self.functionButtons addObject:fb];
}

- (void)removeFunctionButton:(FunctionButton *)fb
{
    [self.functionButtons removeObject:fb];
}

- (void)display
{
    NSLog(@"显示窗口：%@", self.title);
    NSLog(@"显示功能键：");
    for (FunctionButton *fb in self.functionButtons) {
        NSLog(@"%@", fb.name);
    }
    NSLog(@"-------------------");
}

@end
