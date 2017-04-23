//
//  ComponentDecorator.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ComponentDecorator.h"

@implementation ComponentDecorator

- (instancetype)initWithComponent:(Component *)component
{
    if (self = [super init]) {
        _component = component;
    }
    return self;
}

- (void)display
{
    [_component display];
}

@end
