//
//  Actor.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "Actor.h"

@implementation Actor

- (void)description
{
    NSLog(@"%@的外观", self.type);
    NSLog(@"性别：%@", self.sex);
    NSLog(@"面容：%@", self.face);
    NSLog(@"服装：%@", self.costume);
    NSLog(@"发型：%@", self.hairStyle);
}

@end
